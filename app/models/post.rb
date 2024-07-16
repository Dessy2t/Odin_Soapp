class Post < ApplicationRecord
    validates :title, presence: true, length: {minimum: 4, maximum: 20}
    validates :description, presence: true, length: {minimum: 4, maximum: 50}
    validates :keywords, presence: true, length: {minimum: 4, maximum: 20}
    
    has_many_attached :images
    belongs_to :user

    before_create :randomize_id
    private
    def randomize_id
        begin
          self.id = SecureRandom.random_number(1_000_000_000)
        end while User.where(id: self.id).exists?
    end
end
