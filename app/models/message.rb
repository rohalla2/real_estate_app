class Message < ActiveRecord::Base
  belongs_to :User #sender of message
  has_many :recipients
  has_many :users_to, through: :recipients, source: "user"

end
