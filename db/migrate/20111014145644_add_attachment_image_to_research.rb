class AddAttachmentImageToResearch < ActiveRecord::Migration
  def self.up
    add_column :researches, :image_file_name, :string
    add_column :researches, :image_content_type, :string
    add_column :researches, :image_file_size, :integer
    add_column :researches, :image_updated_at, :datetime
  end

  def self.down
    remove_column :researches, :image_file_name
    remove_column :researches, :image_content_type
    remove_column :researches, :image_file_size
    remove_column :researches, :image_updated_at
  end
end
