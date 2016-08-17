class Exercise < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :workout
end
