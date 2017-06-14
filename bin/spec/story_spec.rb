describe  Story do 
	let(:story){Story.new.tap{|s| s.name = "The Old Man and the Sea"}}
	let(:author){Author.new.tap{|s| s.name = "Ernest Hemingway"}}

	it 'has a name' do
		expect(story.name).to eq("The Old Man and the Sea")
	end

	describe 'with an author' do
		describe '#author=' do
			it	'it can set an author' do
				story.author = author

				expect(story.author).to eq(author)
			end

			it 'reciprocates the story into the authors stories collection' do
				story.author = author

				expect(author.stories).to include(story)
			end
		end
	end
end