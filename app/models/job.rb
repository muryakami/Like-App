class Job < ApplicationRecord
  belongs_to :employer

  validates :employer_id, presence: true
  validates :name,        presence: true, length: { maximum: 50 }
  validates :content,     presence: true, length: { maximum: 2000 }
end
