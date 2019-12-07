class Movie < ApplicationRecord
	validates :title, :genre, :description, :trailer, :duration, presence: true
	validates :title, uniqueness: true
	has_many :comments
end
