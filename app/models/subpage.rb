class Subpage < ActiveRecord::Base
  belongs_to :subsection, inverse_of: :subpages

  validates :title, presence: true
  validates :content, presence: true
  validates :link_header, presence: true
  validates :active, presence: true
end
