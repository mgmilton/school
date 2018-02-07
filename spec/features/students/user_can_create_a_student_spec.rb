require "rails_helper"

describe "As a user" do
  describe "when I visit student new page" do
    it "he or she can fill a new student form" do

      visit new_student_path
      fill_in "student[name]", with: "Terrance"
      
      click_on "Create Student"

      expect(page).to have_content("Terrance")
    end
  end
end
