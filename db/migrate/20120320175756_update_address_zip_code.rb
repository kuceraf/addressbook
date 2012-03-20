class UpdateAddressZipCode < ActiveRecord::Migration
  def up
    change_table :addresses do |t|
      t.remove :zip_code
      t.string :zip_code
    end
  end

  def down
    change_table :addresses do |t|
      t.remove :zip_code
      t.integer :zip_code
    end
  end
end
