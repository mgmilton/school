class Course < ApplicationRecord
  has_many :catalogs
  has_many :students, through: :catalogs
end
