class Student < ApplicationRecord
  validates_presence_of :name
  has_many :addresses
  has_many :catalogs
  has_many :courses, through: :catalogs
end
