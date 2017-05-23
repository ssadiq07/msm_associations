Rails.application.routes.draw do
  # Routes for the Character resource:
  # CREATE
  get '/characters/new', controller: 'characters', action: 'new', as: 'new_character'
  post '/characters', controller: 'characters', action: 'create', as: 'characters'

  # READ
  get '/characters', controller: 'characters', action: 'index'
  get '/characters/:id', controller: 'characters', action: 'show', as: 'character'

  # UPDATE
  get '/characters/:id/edit', controller: 'characters', action: 'edit', as: 'edit_character'
  patch '/characters/:id', controller: 'characters', action: 'update'

  # DELETE
  delete '/characters/:id', controller: 'characters', action: 'destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/actors/new', controller: 'actors', action: 'new', as: 'new_actor'
  post '/actors', controller: 'actors', action: 'create', as: 'actors'
  get '/create_character', controller: 'actors', action: 'new_character'

  # READ
  get '/actors', controller: 'actors', action: 'index'
  get '/actors/:id', controller: 'actors', action: 'show', as: 'actor'

  # UPDATE
  get '/actors/:id/edit', controller: 'actors', action: 'edit', as: 'edit_actor'
  patch '/actors/:id', controller: 'actors', action: 'update'

  # DELETE
  delete '/actors/:id', controller: 'actors', action: 'destroy'
  #------------------------------

  # Routes for the Movie resource:
  # CREATE
  get '/movies/new', controller: 'movies', action: 'new', as: 'new_movie'
  post '/movies', controller: 'movies', action: 'create', as: 'movies'

  # READ
  get '/movies', controller: 'movies', action: 'index'
  get '/movies/:id', controller: 'movies', action: 'show', as: 'movie'

  # UPDATE
  get '/movies/:id/edit', controller: 'movies', action: 'edit', as: 'edit_movie'
  patch '/movies/:id', controller: 'movies', action: 'update'

  # DELETE
  delete '/movies/:id', controller: 'movies', action: 'destroy'
  #------------------------------

  # Routes for the Director resource:
  # CREATE
  get '/directors/new', controller: 'directors', action: 'new', as: 'new_director'
  post '/directors', controller: 'directors', action: 'create', as: 'directors'
  get '/create_movie', controller: 'directors', action: 'create_new_movie'

  # READ
  get '/directors', controller: 'directors', action: 'index'
  get '/directors/:id', controller: 'directors', action: 'show', as: 'director'

  # UPDATE
  get '/directors/:id/edit', controller: 'directors', action: 'edit', as: 'edit_director'
  patch '/directors/:id', controller: 'directors', action: 'update'

  # DELETE
  delete '/directors/:id', controller: 'directors', action: 'destroy'
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
