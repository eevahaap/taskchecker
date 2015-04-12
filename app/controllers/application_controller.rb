class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_student
  helper_method :current_teacher

  def current_student
    return nil if session[:student_id].nil?
    Student.find(session[:student_id])
  end

  def current_teacher
    return nil if session[:teacher_id].nil?
    Teacher.find(session[:teacher_id])
  end

end
