class CreateUser < ActiveRecord::Migration[7.0]
  def change
    create_table :users, primary_key: "user_id" do |t|
      t.references :account, foreign_key: true
      t.string :name
      t.string :gender
      t.date :dob
      t.string :mobile_number
      t.timestamps
    end
  end
end
