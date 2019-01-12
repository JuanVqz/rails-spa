class Movie < ApplicationRecord
  belongs_to :category

  validates :name, :year, presence: true
end
