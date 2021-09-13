class CreateDatetimes < ActiveRecord::Migration[6.0]
  def change
    create_table :datetimes do |t|

      t.timestamps
    end
  end
end
