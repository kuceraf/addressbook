class UpdatePhones < ActiveRecord::Migration
  def up
    change_table :phones do |t|
      t.remove :phone_number
      t.string :phone_number
    end
  end

  def down
  end
end
