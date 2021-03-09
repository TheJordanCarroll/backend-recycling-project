class SitesController < ApplicationController
  def index
    sites=Site.all
    render json: sites
  end

  def new
  end

  def create
  end

  def show
    site = Site.find(params[:id])
    render json: site
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def site_params
      params.permit(:id, :address, :borough, :name, :website, :latitude, :longitude, :rating, :accepted_items, :image, :hours, :twitter, :ig, :facebook)
  end
end
