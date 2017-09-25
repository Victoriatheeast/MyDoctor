class SessionsController < ApplicationController

  def destroy
    reset_session
    redirect_to "/", notice: "See ya!"
  end

  def new

  end

  def create
    user = User.find_by(email_address: params["email_address"])
    if user.present?
      if user.authenticate(params["password"])
        session["user_id"] = user.id
        redirect_to "/", notice: "Welcome back, #{user.name}"
      else
        redirect_to "/login", notice: "Nice try."
      end
    else
      redirect_to "/login", notice: "Nice try."
    end
  end

end