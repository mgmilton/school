class Address < ApplicationRecord
  validates_presence_of :description, :street, :city, :state, :zipcode
  belongs_to :student
end
