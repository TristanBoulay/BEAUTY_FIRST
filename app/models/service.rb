class Service < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_by_name_and_title_and_address,
    against: [:name, :title, :address],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

