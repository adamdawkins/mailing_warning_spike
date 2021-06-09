class CreateInvoices < ActiveRecord::Migration[6.1]
  def change
    create_table :invoices do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.integer :amount_in_cents
      t.datetime :due_at
      t.string :status

      t.timestamps
    end
  end
end
