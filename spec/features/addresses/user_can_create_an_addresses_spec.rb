require "rails_helper"

describe "As a user" do
  describe "when I visit a new student address page" do
    it "he or she can create an address" do
      student = Student.create!(name: "Matt")

      visit new_student_address_path(student)
      fill_in "address[description]", with: "Summer Home"
      fill_in "address[street]", with: "1 Beachy Lane"
      fill_in "address[city]", with: "Pensacola"
      fill_in "address[state]", with: "FL"
      fill_in "address[zipcode]", with: 32051
      click_on "Create Address"

      expect(page).to have_content("Summer Home")
      expect(page).to have_content("1 Beachy Lane")
      expect(page).to have_content("Pensacola")
      expect(page).to have_content("FL")
      expect(page).to have_content("32051")
    end
  end
end
