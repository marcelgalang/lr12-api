class User < ApplicationRecord
  has_many :lefts, dependent: :destroy
  # has_secure_password
end
