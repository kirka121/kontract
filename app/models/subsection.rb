class Subsection < ActiveRecord::Base
  has_many :subpages, dependent: :destroy, inverse_of: :subsection

  validates :title, presence: true
end
