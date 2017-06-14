# rspec --format=documentation

class Author
	attr_accessor :name

	def initialize
		@stories = [] 
	end

	def stories # has_many interface
		@stories.dup.freeze 
	end

	def add_story(story)	# has_many interface
		raise AssociationTypeMismatchError if !story.is_a?(Story)
		@stories << story
		story.author = self unless story.author == self
	end

	def bibliography #
		self.stories.collect { |i| i.name }
	end
end
