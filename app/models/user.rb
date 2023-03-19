class User < ApplicationRecord
  has_many :moods
  has_many :resources
  has_many :Journal_entries
  has_many :activities
end
