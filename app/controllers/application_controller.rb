class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/recipes/new' do
    # displays create recipe form
    erb :new
  end

  get '/recipes' do
    # index page to display all recipes
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/:id' do
    # displays one recipe based on id in url
    @recipe = Recipe.find_by_id(params[id])
    erb :show
  end

  get '/recipes/:id/edit' do
    # displays edits based on id in url
  end

  patch '/recipes/:id' do
    # modifies based on id in url
  end

  post '/recipes' do
    # replaces base on id in url
  end

  delete '/recipes/:id/delete' do
    # deletes one recipe based on id in url
  end

end
