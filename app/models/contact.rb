class Contact < ActiveRecord::Base
	validates_uniqueness_of :firstname, :scope => :lastname
	validates :email_id,presence: true
	validates :mobile_number, numericality: {only_integer: true}
	validates_format_of :email_id, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
