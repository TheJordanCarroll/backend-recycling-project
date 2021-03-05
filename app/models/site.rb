class Site < ApplicationRecord
    has_many :comments
    has_many :user_sites
    has_many :category_sites
    has_many :users, through: :user_sites
    has_many :categories, through: :category_sites
end
