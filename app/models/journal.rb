class Journal < ApplicationRecord

	has_one :question_set
	has_many :journal_entries
end
