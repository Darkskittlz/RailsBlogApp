Rails.application.routes.draw do

# Setting the Application Home Page
# At the moment, http://localhost:3000 still displays a page with the Ruby on Rails logo. Let's display our "Hello, Rails!" text at http://localhost:3000 as well. To do so, we will add a route that maps the root path of our application to the appropriate controller and action.

  root "articles#index"
  get "/articles", to: "articles#index"

# The new route is another get route, but it has something extra in its path: :id. This designates a route parameter. A route parameter captures a segment of the request's path, and puts that value into the params Hash, which is accessible by the controller action. For example, when handling a request like GET http://localhost:3000/articles/1, 1 would be captured as the value for :id, which would then be accessible as params[:id] in the show action of ArticlesController.

  get "/articles/:id", to: "articles#show"

  resources :posts

  get "up" => "rails/health#show", as: :rails_health_check
end
