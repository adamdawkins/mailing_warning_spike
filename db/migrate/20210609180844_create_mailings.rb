class CreateMailings < ActiveRecord::Migration[6.1]
  def change
    create_table :mailings do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.string :to

      t.timestamps
    end
  end
end
