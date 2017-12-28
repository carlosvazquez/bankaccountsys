class CreateAccountTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :account_transactions do |t|
      t.integer :amount
      t.string :transaction_type
      t.string :transaction_number
      t.references :bank_account, foreign_key: true

      t.timestamps
    end
  end
end
