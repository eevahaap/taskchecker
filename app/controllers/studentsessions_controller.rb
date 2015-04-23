class StudentsessionsController < ApplicationController
  def new
    # renderöi kirjautumissivun
  end

  def create

    # haetaan usernamea vastaava käyttäjä tietokannasta
    student = Student.find_by username: params[:username]

      if student && student.authenticate(params[:password])
      session[:student_id] = student.id

      # uudelleen ohjataan käyttäjä omalle sivulleen
      redirect_to student
      else
        redirect_to :back, notice: "Username and/or password mismatch"
    end
  end

  def destroy
    # nollataan sessio
    session[:student_id] = nil

    # uudelleenohjataan sovellus pääsivulle
    redirect_to :root
  end
end
