class Subsection < ActiveRecord::Base
  has_many :subpages, dependent: :destroy, inverse_of: :subsection
  belongs_to :user
end
