class Url < ActiveRecord::Base
	 validates :long_url, format: { with: /(https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9][a-zA-Z0-9-]+[a-zA-Z0-9]\.[^\s]{2,}|https?:\/\/(?:www\.|(?!www))[a-zA-Z0-9]\.[^\s]{2,}|www\.[a-zA-Z0-9]\.[^\s]{2,})/ }
 	

	def shorten
		self.short_url = SecureRandom.hex(7)
		self.save
	end

	# def counter
 #    self.click_count += 1
 #  end
	# This is Sinatra! Remember to create a migration!
end
