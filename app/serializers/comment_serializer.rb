class CommentSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :site_id, :content 
    belongs_to :user
    belongs_to :site
end