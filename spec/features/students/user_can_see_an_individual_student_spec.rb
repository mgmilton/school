require "rails_helper"

describe "As a user" do
  describe "when I visit a students page" do
    it "he or she sees the name of the student" do
      student = Student.create!(name: "Matt")

      visit student_path(student)

      expect(page).to have_content("Matt")
    end
  end
end
