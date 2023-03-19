class JournalEntry < ApplicationRecord
  belongs_to :user
  has_many :content
end
