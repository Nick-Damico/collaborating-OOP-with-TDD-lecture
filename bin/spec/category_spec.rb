describe Category do 
	it 'has a name' do
		# Setup
		category = Category.new
		category.name = "Hemingway"

		# Expectation
		expect(category.name).to eq("Hemingway")
	end
end