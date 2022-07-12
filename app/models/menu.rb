class Menu < ApplicationRecord
    belongs_to :restaurant
    has_one_attached :picture
end
