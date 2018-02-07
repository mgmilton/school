require "rails_helper"

describe "As a user" do
  describe "when I visit the student edit page" do
    it "he or she can edit the students name" do
      student = Student.create!(name: "Matt")

      visit edit_student_path(student)
      fill_in "student[name]", with: "Terrance"
      click_on "Update Student"

      expect(page).to have_content("Terrance")
    end
  end
end
