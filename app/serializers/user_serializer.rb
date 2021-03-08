class UserSerializer < ActiveModel::Serializer
    attributes :name, :address, :borough, :image, :username, :password, :email
    belongs_to :user_site
end