class OrderAddress

  include ActiveModel::Model
  attr_accessor :postal_code, :prefecture_id, :city, :place, :building, :phone_number, :user_id, :item_id, :token

  with_options presence: true do
    validates :postal_code,  format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :city
    validates :place
    validates :user_id
    validates :item_id
    validates :token
    validates :phone_number,format: {with: /\A[0-9]{10,11}\z/, message: "is invalid. Include hyphen(-)"}
  end
  validates :prefecture_id, numericality: {other_than: 1, message: "can't be blank"}


  def save
    order = Order.create(item_id: item_id, user_id: user_id)
    Address.create(
      postal_code: postal_code, prefecture_id: prefecture_id, city: city, place: place, 
      building: building, phone_number: phone_number, order_id: order.id
    )
  end
end