require "rails_helper"

describe "as a user" do
  describe "when i visit the index" do
    it "he or she can delete a student" do
      student = Student.create!(name: "Matt")

      visit students_path

      click_on "Delete"
      expect(page).to_not have_content("Matt")
    end
  end
end
