class CreateClassifiedAds < ActiveRecord::Migration
  def change
    create_table :classified_ads do |t|
      t.string :title
      t.integer :rent
      t.string :location
      t.string :description
      t.integer :bed
      t.integer :bath
      t.date :end_date
      t.string :user_id

      t.timestamps
    end
  end
end
