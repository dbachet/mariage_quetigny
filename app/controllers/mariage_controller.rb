class MariageController < ApplicationController
  def home
	@page_title = "home_title"
	@posts = Post.all
	@post = Post.new
	@post_answer = PostAnswer.new
  end

  def contact
    @page_title = "contact_title"
  end

  def accomodation
    @page_title = "accomodation_title"
  end

  def program
    @page_title = "program_title"
  end
  
  def create
  	puts("create from mariage controller")
  end
end
