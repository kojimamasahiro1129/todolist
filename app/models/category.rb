class Category < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: { maximum: 50 }
    has_many :todos
    validates :user_id, presence: true

end
