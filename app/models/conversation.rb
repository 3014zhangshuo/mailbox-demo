class Conversation < Mailboxer::Conversation
  belongs_to :participant, class_name: "User"
end
