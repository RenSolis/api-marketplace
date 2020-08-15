class User < ApplicationRecord
  has_secure_password

  validates :email, uniqueness: true, format: { with: /@/ }
  validates :password, presence: true, allow_blank: true

  has_many :products, dependent: :destroy
end
