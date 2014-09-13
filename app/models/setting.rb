class Setting < ActiveRecord::Base
	validates :site_name, presence: true
	validates :site_title, presence: true
	validates :site_copyright, presence: true
	validates :admin_email, presence: true
	validates :booking_email, presence: true
	validates :registration_mode, presence: true
	validates :subpages_active, presence: true
	validates :teams_active, presence: true
	validates :services_active, presence: true
end
