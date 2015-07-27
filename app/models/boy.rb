class Boy < ActiveRecord::Base
	validates :name, :description, :pros, :cons, presence: true
	validates :level_of_adequacy, numericality: {greater_than_or_equal_to: 0} 

	has_and_belongs_to_many :ericas

end
