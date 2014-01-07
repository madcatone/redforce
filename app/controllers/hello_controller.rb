class HelloController < ApplicationController
	def index
  	end
  
  	def greeting
  	end
  	protect_from_forgery with: :exception
end
