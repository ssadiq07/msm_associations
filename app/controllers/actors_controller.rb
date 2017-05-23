class ActorsController < ApplicationController

  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find_by(id: params[:id])


  end

  def new_character
    @character = Character.new
    @character.movie_id = params[:movie_id]
    @character.actor_id = params[:actor_id]
    @character.name = params[:name]
    @character.save

    @actor = Actor.find_by(id: params[:id])
    redirect_to("/characters")
  end


  def new
  end

  def create
    @actor = Actor.new
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      redirect_to actors_url, notice: "Actor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @actor = Actor.find_by(id: params[:id])
  end

  def update
    @actor = Actor.find_by(id: params[:id])
    @actor.name = params[:name]
    @actor.dob = params[:dob]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]


    if @actor.save
      redirect_to actors_url, notice: "Actor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @actor = Actor.find_by(id: params[:id])
    @actor.destroy

    redirect_to actors_url, notice: "Actor deleted."
  end
end
