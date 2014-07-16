class Contact < ActiveRecord::Base
	validates :firstname,presence: true
	validates_uniqueness_of :firstname, :scope => :lastname
	validates :email,presence: true
	validates :mobile_number, numericality: {only_integer: true}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
