class Review < ApplicationRecord
  belongs_to :user
  belongs_to :service

    validates :comment, presence: true
    validates :comment, length: { minimum: 6 }

end
