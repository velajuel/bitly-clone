class CreateUrls < ActiveRecord::Migration[4.2]
	def change
		# implement your Student model here 
		create_table :urls do |t|
			t.string :long_url
			t.string :short_url


			t.timestamps
		end
	end
end
