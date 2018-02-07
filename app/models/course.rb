class Course < ApplicationRecord
  validates_presence_of :name
  has_many :catalogs, dependent: :destroy
  has_many :students, through: :catalogs
end
