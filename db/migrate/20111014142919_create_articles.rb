class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :headline
      t.text :body
      t.date :published_at

      t.timestamps
    end
  end
end
