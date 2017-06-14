class Story	
	attr_accessor :name
	attr_reader :author # Belongs to interface

	def author=(author) # Belongs to interface
		@author = author
		author.add_story(self) unless author.stories.include?(self)
	end
end