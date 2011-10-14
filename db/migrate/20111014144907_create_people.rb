class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :link
      t.string :degree
      t.integer :category_id

      t.timestamps
    end
  end
end
