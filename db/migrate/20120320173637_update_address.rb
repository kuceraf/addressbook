class UpdateAddress < ActiveRecord::Migration
  def up
    change_table :addresses do |t|
      t.remove :zip_code
      t.string :zip_code
    end
  end

  def down
  end
end
