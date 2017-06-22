class AddCounter < ActiveRecord::Migration[4.2]
	def change
		# implement your Student model here 
			add_column(:urls, :click, :integer)

		
	end
end