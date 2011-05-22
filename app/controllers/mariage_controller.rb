class MariageController < ApplicationController
  def home
	@posts = Post.order("created_at DESC")
	@post = Post.new
	@post_answer = PostAnswer.new
  end

  def contact
  end

  def accomodation
  	@hotels = Hotel.order("distance_to_la_barca ASC")
  end

  def program
  end

end
