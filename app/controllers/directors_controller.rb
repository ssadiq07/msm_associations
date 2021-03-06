class DirectorsController < ApplicationController

  def index
    @directors = Director.all
  end

  def show
    @director = Director.find_by(id: params[:id])
  end

  def new
  end

  def create_new_movie
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration].to_f
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]
    @movie.save


    redirect_to("/movies")
  end

  def create
    @director = Director.new
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to directors_url, notice: "Director created successfully."
    else
      render 'new'
    end
  end

  def edit
    @director = Director.find_by(id: params[:id])
  end

  def update
    @director = Director.find_by(id: params[:id])
    @director.name = params[:name]
    @director.dob = params[:dob]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to directors_url, notice: "Director updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @director = Director.find_by(id: params[:id])
    @director.destroy

    redirect_to directors_url, notice: "Director deleted."
  end
end
