class DashboardsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @companies = current_user.companies
  end
end