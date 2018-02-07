require "rails_helper"

describe "As a user" do
  describe "when I visit a student index page" do
    it "he or she sees list of all the students" do
      student = Student.create!(name: "Matt")
      student_2 = Student.create!(name: "Joey")

      visit students_path

      expect(page).to have_content("Matt")
      expect(page).to have_content("Joey")

    end
  end
end
