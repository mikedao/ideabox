require './idea'
require 'bundler'
Bundler.require

class IdeaBoxApp  < Sinatra::Base
	
	not_found do
		erb :error
	end

	configure :developent do
		register Sinatra::Reloader
	end

	post '/' do
		# 1. Create an idea based on the form paramaters.
		idea = Idea.new

		# 2. Store it.
		idea.save

		# 3. Send us back to the index page to see all ideas.
		"Creating an IDEA!"
	end


	get '/' do
		erb :index
	end

end
