class Part < ApplicationRecord
  has_and_belongs_to_many :car

  validates :name, presence: true, uniqueness: true
end
