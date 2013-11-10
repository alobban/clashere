class ChangeDataTypeOfDescription < ActiveRecord::Migration
  def change
  	change_column :classified_ads, :description, :text
  end
end
