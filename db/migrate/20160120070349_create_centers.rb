class CreateCenters < ActiveRecord::Migration
  def up
    create_table :centers do |t|
    	t.integer :registration_number ,null: false
    	t.date :registration_date
    	t.integer :tin_number
    	t.integer :no_of_trainers
    	t.integer :total_numbers
    	t.string :name
    	t.string :address
    	t.string :contact_no
    	t.integer :registration_fee
    	t.integer :monthly_fee
    	t.integer :status
    	t.integer :sector_id
    	t.timestamps
    end
    add_foreign_key :centers,:sectors
  end
  def down
  	    drop_table :centers
  end
end
