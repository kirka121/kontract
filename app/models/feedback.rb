class Feedback < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	validates_format_of :email, :with => /@/
	validates :proj_name, presence: true
end
