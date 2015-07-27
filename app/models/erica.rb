class Erica < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :sexiness, numericality: {greater_than_or_equal_to: 0} 
	validates :objective, inclusion: { in: ["DFMO", "Oh, Mr. Darcy!", "I just came to say hello"] }

	has_and_belongs_to_many :boys
	has_many :suggestions

end
