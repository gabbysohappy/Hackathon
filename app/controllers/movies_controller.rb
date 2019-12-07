class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :duration, :genre, :description, :trailer)
  end
  
  def set_movie
    @movie = Movie.find(params[:id])
  end 
end
