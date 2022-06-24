class Restaurant < ApplicationRecord
    has_one_attached :image 
    belongs_to :user, optional: true

    resourcify
end
