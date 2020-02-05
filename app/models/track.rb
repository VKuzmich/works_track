class Track < ApplicationRecord
  has_many :exercises, dependent: :destroy
end
