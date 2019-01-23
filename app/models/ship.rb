class Ship < ApplicationRecord
	has_many :scores

	validates_uniqueness_of :email
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
	validates_presence_of :name
end
