class Category < ApplicationRecord
    has_many :item_categories
    has_many :category_sites
    has_many :sites, through: :category_sites
end
