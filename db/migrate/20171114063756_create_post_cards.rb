class CreatePostCards < ActiveRecord::Migration[5.1]
  def change
    create_table :post_cards do |t|

      t.text :title
      t.text :keywords
      t.text :slug
      t.text :description
      t.text :image_url
      t.text :body
      t.boolean :published, null: false
      t.timestamp :sent_at

      t.timestamps
    end
  end
end
