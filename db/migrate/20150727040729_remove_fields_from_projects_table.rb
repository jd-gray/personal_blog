class RemoveFieldsFromProjectsTable < ActiveRecord::Migration
  def change
    remove_column :projects, :image
    remove_column :projects, :image_updated_at
    remove_column :projects, :image_file_size
    remove_column :projects, :image_content_type
    remove_column :projects, :image_file_name
  end
end
