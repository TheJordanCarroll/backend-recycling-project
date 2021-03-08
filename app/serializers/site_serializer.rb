class SiteSerializer < ActiveModel::Serializer
    attributes :address, :borough, :name, :website, :latitude, :longitude, :rating, :accepted_items, :image, :hours, :twitter, :ig, :facebook

    belongs_to :user_site
end