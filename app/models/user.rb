class User < ApplicationRecord
  has_many :lefts, dependent: :destroy
  has_many :rights, dependent: :destroy
  has_many :ones, dependent: :destroy
  has_many :twos, dependent: :destroy
  # has_secure_password
end
