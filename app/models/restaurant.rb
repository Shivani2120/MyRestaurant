class Restaurant < ApplicationRecord
    has_one_attached :image 
    has_many :restaurant_images, inverse_of: :restaurant
    has_many_attached :images
    has_many_attached :clips 
    has_many :reviews
    belongs_to :user, optional: true
    validates :name, presence: true
    validates :email, presence: true
    validates :contact, presence: true
    validates :full_address, presence: true

    resourcify
end
