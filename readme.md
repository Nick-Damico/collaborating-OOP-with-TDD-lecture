# Created from Learn.co lecture with Avi

## Collaborating Objects - Puree OO with TDD

authors
	has_many_stories
	has_many categories, through stories


stories
	belongs to an author
	belongs to a category



categories
	has_many stories
	has_man authors, through stories

hemingway = Author.new
hemingway.stories #=> [#<Story>, #<Story>]

Implement a through for categories

author.build.story("The Name")
story.build_author("New Author")