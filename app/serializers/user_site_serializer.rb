class UserSiteSerializer < ActiveModel::Serializer
    attributes :user_id, :site_id 
    belongs_to :user
    belongs_to :site
end