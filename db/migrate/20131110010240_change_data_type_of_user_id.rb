class ChangeDataTypeOfUserId < ActiveRecord::Migration
  def change
  	change_column :classified_ads, :user_id, :integer
  end
end
