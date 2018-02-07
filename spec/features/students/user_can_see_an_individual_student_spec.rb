require "rails_helper"

describe "As a user" do
  describe "when I visit a students page" do
    it "he or she sees the name of the student" do
      student = Student.create!(name: "Matt")
      address = student.addresses.create(description: "Summer Home", street: "1 Beachy Lane", city: "Pensacola", state: "FL", zipcode: 32051)
      student.courses.create!(name: "Juggling")
      visit student_path(student)

      expect(page).to have_content("Matt")
      expect(page).to have_content("Summer Home")
      expect(page).to have_content("1 Beachy Lane")
      expect(page).to have_content("Pensacola")
      expect(page).to have_content("FL")
      expect(page).to have_content("32051")
      expect(page).to have_content("Juggling")
    end
  end
end
