class UserSerializer < ActiveModel::Serializer
    attributes :id, :name, :address, :borough, :image, :username, :password, :email
    has_many :user_sites
end