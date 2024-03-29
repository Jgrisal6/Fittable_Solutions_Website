class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :phone_number
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
