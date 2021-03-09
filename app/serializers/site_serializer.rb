class SiteSerializer < ActiveModel::Serializer
    attributes :id, :address, :borough, :name, :website, :latitude, :longitude, :rating, :accepted_items, :image, :hours, :twitter, :ig, :facebook
end