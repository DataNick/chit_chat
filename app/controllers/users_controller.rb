class UsersController < ApplicationController
	before_action :authenticate_user!
	helper_method :current_user, :user_signed_in?, :user_session
	# user_signed_in?
	# current_user
	# user_session

	def index
		@users = User.all_except(current_user) 
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
			if @user.save
				root to: "welcome#index", notice: "Signed up!"
			else
				render "new"
			end
	end

	def show
		@user = User.find(params[:id])
	end

	private

	def user_params
		params.require(:user).permit(:email, :name)
	end


end
