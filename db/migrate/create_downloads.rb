class CreateDownloads < ActiveRecord::Migration

  def self.up 
    create_table :download_categories do |t|
      t.string :title
      t.integer :position

      t.timestamps
    end
    
    create_table :download_files do |t|
      t.string :title
      t.string :download_category_id
      t.integer :file_id
      t.integer :position

      t.timestamps
    end

    add_index :download_files, :id
    add_index :download_files, :download_category_id 
    add_index :download_categories, :id

    load(Rails.root.join('db', 'seeds', 'downloads.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "downloads"})

    Page.delete_all({:link_url => "/download"})

    drop_table :download_files
    drop_table :download_categories
  end

end
