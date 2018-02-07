require "rails_helper"

describe "As a user" do
  describe "when I visit a course page" do
    it "he or she sees the names of the students enrolled" do
      student = Student.create!(name: "Matt")
      course = student.courses.create!(name: "Juggling")

      visit course_path(course)

      expect(page).to have_content("Matt")
    end
  end
end
