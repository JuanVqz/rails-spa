class Category < ApplicationRecord
  has_many :movies

  validates :name, presence: true
  validates :name, uniqueness: { case_sensitive: false }

  accepts_nested_attributes_for :movies, allow_destroy: true
end
