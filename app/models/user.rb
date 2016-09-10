class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: {maximum: 20},
    uniqueness: {case_sensitive: false}

  has_many :carts
  has_many :requests
  has_many :favorites
  has_many :reviews

  enum role: [:admin, :member, :guest]
end
