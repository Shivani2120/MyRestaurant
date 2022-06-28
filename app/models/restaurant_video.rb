class RestaurantVideo < ApplicationRecord
    belongs_to :restaurant
    has_many_attached :videos
end
