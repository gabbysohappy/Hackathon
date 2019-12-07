class CommentsController < ApplicationController
  before_action :set_movie
  before_action :set_comment, only: [:edit, :update, :show, :destroy]

  def index
    @comments = @movie.comments.all
  end

  def show
  end

  def new
    @movies = Movie.all
    @comment = @movie.comments.new
  end

  def create
    @comment = @movie.comments.new
    if @comment.save
      redirect_to movie_path(@movie)
    else
      render :new
    end
  end


  def edit
    @comments = Comment.all
  end

  def update
    if @comment.update(comment_params)
      redirect_to movie_path(@movie)
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to movie_path(@movie)
  end

  private 

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end 

  def set_comment
    @comment = @movie.comments.find(params[:id])
  end
  
  def comment_params 
    params.require(:comment).permit(:body)
  end
end
