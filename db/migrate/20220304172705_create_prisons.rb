class CreatePrisons < ActiveRecord::Migration[7.0]
  def change
    create_table :prisons do |t|
      t.bigint :hkf_id
      t.string :name
      t.string :address
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :order_restrictions
      t.string :shipping_restrictions
      t.string :comment

      t.timestamps
    end
  end
end
