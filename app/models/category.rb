class Category < ApplicationRecord
  include Kaminari::ActiveRecordModelExtension
  has_many :drinks

  validates :title, presence: true, length: {maximum: 50},
    uniqueness: {case_sensitive: false}
end
