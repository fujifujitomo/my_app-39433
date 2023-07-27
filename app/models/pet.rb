class Pet < ApplicationRecord
  validates :name, presence: true
  belongs_to :user
  has_many :writes
end
