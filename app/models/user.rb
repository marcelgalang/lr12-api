class User < ApplicationRecord
  has_many :lefts, :rights, :ones, :twos, dependent: :destroy
  # has_secure_password
end
