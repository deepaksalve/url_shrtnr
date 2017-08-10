class CreateShortUrls < ActiveRecord::Migration[5.1]
  def up
    create_table :short_urls do |t|
      t.string :original_url
      t.string :short_url
      t.integer :clicks, default: 0

      t.timestamps
    end

    add_index :short_urls, :original_url
    add_index :short_urls, :short_url
  end

  def down
    drop_table :short_urls
  end
end
