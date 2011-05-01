class Mariage::PostAnswersController < ApplicationController
  # GET /post_answers
  # GET /post_answers.xml
  def index
    @post_answers = PostAnswer.all

  end

  # GET /post_answers/1
  # GET /post_answers/1.xml
  def show
    @post_answer = PostAnswer.find(params[:id])

  end

  # GET /post_answers/new
  # GET /post_answers/new.xml
  def new
  	@post = Post.find(params[:post_id])
    @post_answer = PostAnswer.new
  end

  # GET /post_answers/1/edit
  def edit
    @post_answer = PostAnswer.find(params[:id])
  end

  # POST /post_answers
  # POST /post_answers.xml
  def create
    @post_answer = PostAnswer.new(params[:post_answer])

      if @post_answer.save
        redirect_to(mariage_home_path, :notice => 'Post answer was successfully created.')
      else
        redirect_to(mariage_home_path, :notice => 'Post answer wasn\'t successfully created.')
      end
  end

  # PUT /post_answers/1
  # PUT /post_answers/1.xml
  def update
    @post_answer = PostAnswer.find(params[:id])

    respond_to do |format|
      if @post_answer.update_attributes(params[:post_answer])
        format.html { redirect_to(@post_answer, :notice => 'Post answer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post_answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post_answers/1
  # DELETE /post_answers/1.xml
  def destroy
    @post_answer = PostAnswer.find(params[:id])
    @post_answer.destroy
  end
end
