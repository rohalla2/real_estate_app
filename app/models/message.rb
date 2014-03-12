class Message < ActiveRecord::Base
  belongs_to :user #sender of message
  has_many :recipients
  has_many :users_to, through: :recipients, source: "user"

  validates :title, :message, :message_type, presence: true

  MESSAGE_TYPES = ["UTIL", "RENT", "APPLICATION", "OTHER"]

end
