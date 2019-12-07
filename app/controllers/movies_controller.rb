class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
  	@movies = Movie.all
  end

  def show
  end

  def new
  	@movie = Movie.new
  	render partial: 'form'
  end

  def create
  	@movie = Movie.new(movie_params)
  	if @movie.save
  		redirect_to movies_path
  	else
  		render partial: 'form'
  	end
  end

  def edit
  	render partial: 'form'
  end

  def update
  	if @movie.update(movie_params)
  		redirect_to @movie
  	else
  		redirect_to partial: 'form'
  	end
  end

  def destroy
  	@movie.destroy
  	redirect_to root_path
  end

  private
  def movie_params
    params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
  end
  
  def set_movie
    @movie = Movie.find(params[:id])
  end 
end