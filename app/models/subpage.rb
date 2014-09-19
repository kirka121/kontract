class Subpage < ActiveRecord::Base
  belongs_to :subsection
  belongs_to :user
end
