class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :chart, optional: true
  belongs_to :playlist, optional: true
end
