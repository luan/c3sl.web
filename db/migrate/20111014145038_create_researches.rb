class CreateResearches < ActiveRecord::Migration
  def change
    create_table :researches do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
