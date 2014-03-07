class Message < ActiveRecord::Base
  belongs_to :user #sender of message
  has_many :recipients
  has_many :users_to, through: :recipients, source: "user"

end
