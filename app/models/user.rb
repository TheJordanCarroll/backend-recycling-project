class User < ApplicationRecord
    has_many :comments
    has_many :user_sites
    has_many :items
    has_many :sites, through: :comments
    has_many :sites, through: :user_sites

end
