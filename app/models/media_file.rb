class MediaFile < ApplicationRecord
  validates :filename, presence: true
  belongs_to :Event
end
