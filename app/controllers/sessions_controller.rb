class SessionsController < ApplicationController
  before_action :set_session, only: [:show, :edit, :update, :destroy]

  # GET /sessions/new
  def new
  end

  # POST /sessions
  # POST /sessions.json
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: "Logged in!"
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end
  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end