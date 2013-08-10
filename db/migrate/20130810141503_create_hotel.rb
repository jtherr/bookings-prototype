class CreateHotel < ActiveRecord::Migration
  def up
    create_table :hotels do |t|
      t.string :name, :null => false
      t.string :address, :null => false
    end
  end
  
  def down
    drop_table :hotels
  end
end
