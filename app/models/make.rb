class Make < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: {minimum: 2}
  validates :country, presence: true, length: {minimum: 2}
end
