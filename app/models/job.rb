class Job < ApplicationRecord
  belongs_to :employer
  has_many :likes, dependent: :destroy
  has_many :employees, through: :likes

  validates :employer_id, presence: true
  validates :title,       presence: true, length: { maximum: 50 }
  validates :content,     presence: true, length: { maximum: 2000 }
end
