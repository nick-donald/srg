class SessionsController < ApplicationController
	def new
		user = User.find_by_remember_token(cookies[:remember_token])
		if signed_in?
			redirect_to user
		else
			render 'new'
		end
	end

	def create

		user = User.find_by_username(params[:session][:username].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_back_or user
		else
			flash.now[:error] = 'Invalid username or password'
			render 'new'
		end
	end

	def destroy
		sign_out
		redirect_to root_url
	end
end
