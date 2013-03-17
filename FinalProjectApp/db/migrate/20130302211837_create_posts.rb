class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :url
      t.text :text
      t.integer :user_id
      t.string :url_html

      t.timestamps
    end
  end
end
