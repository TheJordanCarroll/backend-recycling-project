class UserSiteSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :site_id 
    belongs_to :user
    belongs_to :site
    
end