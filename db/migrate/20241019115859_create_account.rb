class CreateAccount < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, primary_key: "account_id" do |t|
      t.string :account_name
      t.string :account_email
      t.string :password_digest
      t.integer :role
      t.timestamps
    end
  end
end
