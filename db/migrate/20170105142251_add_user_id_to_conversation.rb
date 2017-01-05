class AddUserIdToConversation < ActiveRecord::Migration[5.0]
  def change
    add_column :mailboxer_conversations, :user_id, :integer
  end
end
