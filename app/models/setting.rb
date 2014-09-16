class Setting < ActiveRecord::Base
	validates :site_name, presence: true
	validates :site_title, presence: true
	validates :site_copyright, presence: true
	validates_format_of :admin_email, :with => /@/
	validates_format_of :booking_email, :with => /@/
	validates :registration_mode, presence: true
end
