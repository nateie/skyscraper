class Scraper

	def self.scrape 
		response = HTTParty.get('http://www.brainyquote.com/quotes/authors/t/taylor_swift.html')
		doc = Nokogiri::HTML(response.body)

		quotes = []

		# Print out each link using a CSS selector
		doc.css('.bqQuoteLink a').each do |data|
  			quotes << data.content
  			# dumps to screen
  			# puts data.content
		end

		#size = quotes.count
		#index = rand(size)
		#quotes[index]

		# gets the same job done as above
		quotes.sample

	end

end