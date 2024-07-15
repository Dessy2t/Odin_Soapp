class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum: 4, maximum: 20}
    validates :description, presence: true, length: {minimum: 4, maximum: 50}
    validates :keywords, presence: true, length: {minimum: 4, maximum: 20}
    
    has_many_attached :images
end
