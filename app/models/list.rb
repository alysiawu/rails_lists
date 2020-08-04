class List < ApplicationRecord
  validates :title, presence: true
  belongs_to :user, foreign_key: true
end
