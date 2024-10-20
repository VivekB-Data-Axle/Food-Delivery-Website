class CreateRestaurant < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants, primary_key: "rest_id" do |t|
      t.references :account, foreign_key: true
      t.string :rest_name
      t.timestamps
    end
  end
end
