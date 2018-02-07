class CoursesController < ApplicationController
  def show
    @course = Courses.find(params[:id])
  end
end
