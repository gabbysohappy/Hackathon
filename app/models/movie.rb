class Movie < ApplicationRecord
	validates :title, :genre, :description, :trailer, :duration, presence: true
	validates :title, uniqueness: true
	has_many :comments

	def get_iframe_embed_code
		%(<iframe title="#{self.title}" width="560"
                height="315" src="#{self.trailer}"
                frameborder="0" allowfullscreen></iframe>)
	end
end
