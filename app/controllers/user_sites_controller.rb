class UserSitesController < ApplicationController
  def index
    user_sites=UserSite.all
    render json: user_sites
  end

  # def new
  #   user_site = UserSite.new
  #   render json: user_site
  # end

  def create
    user_site = UserSite.create(user_site_params)
    render json: user_site
  end

  def show
    user_site = UserSite.find(params[:id])
    render json: user_site
  end

  # def edit
  # end

  def update
  end

  def destroy
    user_site = UserSite.find(params[:id])
    user_site.destroy
    render json: user_site
  end

  private
  def user_site_params
      params.permit(:id, :user_id, :site_id)
  end
end
