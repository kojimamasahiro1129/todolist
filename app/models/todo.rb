class Todo < ApplicationRecord
    belongs_to :category
    validates :task, presence: true, length: { maximum: 100 }
end
