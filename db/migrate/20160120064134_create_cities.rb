class CreateCities < ActiveRecord::Migration
  def up
    create_table :cities do |t|
    	 t.string :name
  	  	 t.integer :country_id
  	  	 t.timestamps
  	end
  	#which table foreign key you want in this table you will
  	#add on right side also you will add t.integer :tablename_id
  	add_foreign_key :cities,:countries
  end
  def down
  	  	drop_table :cities
  end
    
  
end
