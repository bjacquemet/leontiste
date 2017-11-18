class CreateTranslationForPostCards < ActiveRecord::Migration[5.1]
  def up
    PostCard.create_translation_table!({
          title: :text,
          body: :text,
          description: :text
      },
      {migrate_data: true}
    )
  end

  def down
    PostCard.drop_translation_table! migrate_data: true
  end

  # def change
  #   create_table :translation_for_post_cards do |t|
  #   end
  # end
end
