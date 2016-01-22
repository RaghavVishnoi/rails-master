class CreateCategories < ActiveRecord::Migration
  def up
    create_table :categories do |t|
    	t.integer :center_id
    	t.integer :trainer_id
    	t.timestamps
    end
    add_foreign_key :categories,:centers
    add_foreign_key :categories,:trainers
    end
  def down
  	 drop_table :categories
  end
end
