class DashboardController < ApplicationController
  before_action :logged_in?

  def home
    @surveys = Survey.where(author_id: session[:user_id])
  end

  private def logged_in?
    unless Author.find_by_id(session[:user_id])
      redirect_to sessions_login_path, notice: 'User or Password does not match our records.'
    end
  end
end
