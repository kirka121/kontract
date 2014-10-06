class Subpage < ActiveRecord::Base
  belongs_to :subsection, inverse_of: :subpages
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true
  validates :link_header, presence: true
end
