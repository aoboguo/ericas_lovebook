class Comment < ActiveRecord::Base
	validates :friend_name, :suggested_companion, :reason, presence: true

	belongs_to :erica
end