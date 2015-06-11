class DashboardController < ApplicationController
  def home
    @surveys = Survey.all
  end
end
