class ArticlesController < ApplicationController
  # The index action is empty. When an action does not explicitly render a view (or otherwise trigger an HTTP response), Rails will automatically render a view that matches the name of the controller and action. Convention Over Configuration! Views are located in the app/views directory. So the index action will render app/views/articles/index.html.erb by default.
  def index
    # this fetches all the items in the database
    @articles = Article.all
  end

  def show 
    @article = Article.find(params[:id])
  end
end
