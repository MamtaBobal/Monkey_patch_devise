class DashboardController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def search
  	email = params[:q]
    user = User.where(:email => email).first
  	if email and user
  			sign_in(:user, user)
  	end
  	redirect_to root_url
  end

end
