module ApplicationHelper

	def yield_site_settings
		return Setting.find(1)
	end
end
