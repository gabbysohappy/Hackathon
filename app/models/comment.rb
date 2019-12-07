class Comment < ApplicationRecord
	validates :body, presence: true
  belongs_to :movie
end
