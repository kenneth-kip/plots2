class AddEmojiTypeToLike < ActiveRecord::Migration[5.0]
  def change
  	add_column :likes, :emoji_type, :string
  end
end
