class ClassifiedAd < ActiveRecord::Base
	belongs_to :user
	
	validates :description, length: { minimum: 5, maximum: 250 }
	validates :title, length: { minimum: 5, maximum: 50 }
	validates :rent, numericality: { greater_than_or_equal_to: 5_000, less_than_or_equal_to: 100_000 },
	  allow_nil: false
end
