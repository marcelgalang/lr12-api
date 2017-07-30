class Left < ApplicationRecord
  belongs_to :user
  # validates :start, presence: true
  # validates :end, presence: true
  # validates :duration, presence: true
end
