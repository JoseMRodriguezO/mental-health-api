class User < ApplicationRecord
  has_many :moods
  has_many :resources
  has_many :journal_entries
  has_many :activities
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
