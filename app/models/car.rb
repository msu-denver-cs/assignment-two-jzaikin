class Car < ApplicationRecord
  validates :make, presence: true, allow_blank: false, length: { minimum: 2 }
  validates :model, presence: true, allow_blank: false, length: {minimum: 2 }
  validates :VIN, presence: true, allow_blank: false, numericality: { only_integer: true}

  has_and_belongs_to_many :parts
  validates :parts, presence: true


end
