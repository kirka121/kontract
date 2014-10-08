class Subpage < ActiveRecord::Base
  belongs_to :subsection, inverse_of: :subpages
  belongs_to :user

  validates :title, presence: true, length: { maximum: 20, minimum: 4 }
  validates :content, presence: true, length: { minimum: 5 }
  validates :link_header, presence: true, length: { maximum: 50, minimum: 4 }, uniqueness: true
end
