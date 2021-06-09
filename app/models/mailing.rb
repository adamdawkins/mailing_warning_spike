class Mailing < ApplicationRecord
  belongs_to :client

  validates :to, presence: true
end
