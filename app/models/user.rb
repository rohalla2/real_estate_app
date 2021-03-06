class User < ActiveRecord::Base
	has_many :properties
	has_many :applications
	has_many :tenant_ofs
	has_many :rented_properties, through: :tenant_ofs, source: "property"
	has_many :messages_sent, class_name: "Message"
	has_many :recipients
	has_many :messages_received, through: :recipients, source: "message"
	has_many :payments


	before_validation :downcase_username
	before_create :downcase_username
	before_save :downcase_username

	USER_TYPES = ["Manager", "Tenant"]
  	validates :first_name, :last_name, :address, :city, :state, :zip_code, :picture_url, presence: true
  	validates :email, presence: true, uniqueness: true
  	validates :user_type, inclusion: USER_TYPES
  	validates :picture_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i, 
		message: 'must be a URL for GIF, JPG or PNG image'
	}
  has_secure_password

  private
		def downcase_username
			self.email.downcase!
		end
end
