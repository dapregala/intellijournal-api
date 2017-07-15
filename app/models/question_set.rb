class QuestionSet < ApplicationRecord

	has_many :questions
	belongs_to :journal

end
