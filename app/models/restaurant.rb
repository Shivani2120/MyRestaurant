class Restaurant < ApplicationRecord
    has_one_attached :image 
    has_many :restaurant_images, inverse_of: :restaurant
    accepts_nested_attributes_for :restaurant_images, reject_if: :all_blank, allow_destroy: true
    has_many :restaurant_videos
    belongs_to :user, optional: true
    validates :name, presence: true
    validates :email, presence: true
    validates :contact, presence: true
    validates :full_address, presence: true

    resourcify
end
