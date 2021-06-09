json.extract! invoice, :id, :client_id, :amount_in_cents, :due_at, :status, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
