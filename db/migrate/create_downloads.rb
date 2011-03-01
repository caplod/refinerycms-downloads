class CreateDownloads < ActiveRecord::Migration

  def self.up
    create_table :downloads do |t|
      t.string :title
      t.integer :file_id
      t.integer :position

      t.timestamps
    end

    add_index :downloads, :id

    load(Rails.root.join('db', 'seeds', 'downloads.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "downloads"})

    Page.delete_all({:link_url => "/downloads"})

    drop_table :downloads
  end

end
