class CreateTrainers < ActiveRecord::Migration
  def up
    create_table :trainers do |t|
    	t.string :name
    	t.integer :age
    	t.string :gender
    	t.integer :status
    	t.string :contact_number
    	t.integer :registration_fee
    	t.integer :monthly_fee
    	t.integer :city_id
    	t.timestamps
    end
    add_foreign_key :trainers,:cities
  end
  
  def down
  	    drop_table :trainers
  end
end
