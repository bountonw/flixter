class LessonsController < ApplicationController
	before_action :authenticate_user!

	def show
		if !current_user.enrolled_in?(current_lesson.section.course)
			redirect_to course_path(current_lesson.section.course), alert: "You must be enrolled in this course in order to view the lessons."
		end
	end

	
	private

	helper_method :current_lesson
	def current_lesson
		@current_lesson ||= Lesson.find(params[:id])
	end
end
