class Category < ApplicationRecord
  has_many :drinks

  validates :name, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
end
