class TeachersessionsController < ApplicationController

  def new
  end

  def create
    # haetaan usernamea vastaava käyttäjä tietokannasta
    teacher= Teacher.find_by username: params[:username]

    # talletetaan sessioon kirjautuneen käyttäjän id (jos käyttäjä on olemassa)
    session[:teacher_id] = teacher.id if not teacher.nil?

    # uudelleen ohjataan käyttäjä omalle sivulleen
    redirect_to teacher
  end


  def destroy
    # nollataan sessio
    session[:teacher_id] = nil
    # uudelleenohjataan sovellus pääsivulle
    redirect_to :root
  end

end
