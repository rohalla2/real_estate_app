class Payment < ActiveRecord::Base
  belongs_to :user
  belongs_to :property

  ACCOUNT_TYPES = ["CHECKING", "SAVINGS"]
end
