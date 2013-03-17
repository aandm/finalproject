class JournalController < ApplicationController
	def index
		if Post.present?
			@randomPost = Post.find(:all, :order => "RANDOM()", :limit => 15)
		end
		@users = User.order("username asc")
		if params[:search].present?
      		k = params[:search]
      		@match = @users.where('username LIKE ?', "%#{k}%")
      		if @match.count == 1
      			@match.each do |result|
      				redirect_to "/#{result.username}"
      			end
      		end
      		if @match.count == 0
      			redirect_to root_url, notice: 'Sorry! No Matches Found!'
    		end
      		
    	end
	end
end