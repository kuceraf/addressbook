class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.integer :zip_code
      t.integer :company_id

      t.timestamps
    end
  end
end
