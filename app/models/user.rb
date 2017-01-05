class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  acts_as_messageable
  has_many :conversations
  def mailboxer_email(object)
 #return the model's email here
  end

  #mailboxer 没有这个会出现no method mailboxer_email
  def mailboxer_email(user)
    nil
  end
  ###

  # ##模改mailboxer的发信功能
  # def send_message(recipients, msg_body, subject, order, sanitize_text = true, attachment = nil, message_timestamp = Time.now)
  #   convo = Mailboxer::ConversationBuilder.new(subject: subject,
  #                                              created_at: message_timestamp,
  #                                              updated_at: message_timestamp).build
  #   message = Mailboxer::MessageBuilder.new(sender: self,
  #                                           conversation: convo,
  #                                           recipients: recipients,
  #                                           body: msg_body,
  #                                           subject: subject,
  #                                           attachment: attachment,
  #                                           created_at: message_timestamp,
  #                                           updated_at: message_timestamp).build
  #   convo.order_two_id = order.id
  #   convo.save
  #   message.deliver false, sanitize_text
  # end
  # ##
end
