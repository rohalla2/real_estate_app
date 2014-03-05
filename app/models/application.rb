class Application < ActiveRecord::Base
  belongs_to :User
  belongs_to :Property
end
