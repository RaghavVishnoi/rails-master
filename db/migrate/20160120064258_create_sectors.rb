class CreateSectors < ActiveRecord::Migration
  def up
    create_table :sectors do |t|
    	t.string :name
    	t.integer :city_id
    	t.timestamps
    end
    add_foreign_key :sectors,:cities
  end
  def down
  	  	drop_table :sectors
  end
end
