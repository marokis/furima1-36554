class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  has_one :order
  has_one_attached :image


  with_options presence: true do
    validates :name
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :category_id
    validates :status_id
    validates :charge_id
    validates :prefecture_id
    validates :day_id
  end
  
end
