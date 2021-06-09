class Client < ApplicationRecord
  has_many :invoices
  has_many :mailings
  validates :name, presence: true, uniqueness: true
end
