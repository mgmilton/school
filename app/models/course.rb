class Course < ApplicationRecord
  has_many :catalogs, dependent: :destroy
  has_many :students, through: :catalogs
end
