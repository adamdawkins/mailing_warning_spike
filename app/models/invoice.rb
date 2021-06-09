class Invoice < ApplicationRecord
  belongs_to :client

  validates :amount_in_cents, numericality: true

  scope :approved, -> { where(status: "approved") }

  after_update_commit do
    broadcast_replace_to client, :new_mailing, target: "new_mailing_notice", partial: "mailings/warning"
  end
end
