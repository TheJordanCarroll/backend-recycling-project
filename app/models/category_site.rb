class CategorySite < ApplicationRecord
    belongs_to :category
    belongs_to :site
end
