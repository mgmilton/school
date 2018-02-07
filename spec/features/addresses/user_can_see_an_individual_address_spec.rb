require "rails_helper"

describe "As a user" do
  describe "when I visit a student address page" do
    it "he or she sees the address info" do
      student = Student.create!(name: "Matt")
      address = student.addresses.create(description: "Summer Home", street: "1 Beachy Lane", city: "Pensacola", state: "FL", zipcode: 32051)

      visit student_address_path(student, address)

      expect(page).to have_content("Summer Home")
      expect(page).to have_content("1 Beachy Lane")
      expect(page).to have_content("Pensacola")
      expect(page).to have_content("FL")
      expect(page).to have_content("32051")
    end
  end
end
