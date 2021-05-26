class AuthorsController < ApplicationController

	def index
		@auhtors = Author.all
	end

	def show
		@author = Author.find(params[:id])
		if @author.save
			redirect_to author_path
		else
			render :new
		end
	end

	def new
		@author = Author.new 
	end

	def create
		@author = Author.new(author_params) 
	end

	private
	
	def author_params
		params.require(:author).permit(:name, :age)
	end
			
end
