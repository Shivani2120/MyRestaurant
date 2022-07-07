class Restaurant < ApplicationRecord
    searchable do
        text :name, :description, :full_address
        string  :sort_full_address do
            full_address.downcase.gsub(/^(an?|the)/, '')
        end
    end

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
