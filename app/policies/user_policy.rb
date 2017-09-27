class UserPolicy
	attr_reader :current_user, :model

	def initialize(current_user, model)
		@current_user = current_user
		@user = model
	end

	def index?
		@current_user.admin? || @current_user.tier1? || @current_user.toer2?
	end

	# def home?
	# 	@current_user == @user
	# end

	def show?
		@current_user.admin? || @current_user.tier1? || @current_user.toer2?
	end

	def edit?
		@current_user.admin? || @current_user.tier1? || @current_user.toer2?
	end

	def update?
		@current_user.admin? || @current_user.tier1? || @current_user.toer2?
	end
end
