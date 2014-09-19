class Subsection < ActiveRecord::Base
  has_many :subpages, dependent: :destroy
  belongs_to :user
end
