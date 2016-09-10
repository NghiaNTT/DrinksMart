class Request < ApplicationRecord
  belongs_to :user

  enum status: [:not_accept, :pending, :accepted, :rejected]
end
