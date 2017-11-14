class ApplicationController < ActionController::Base

  def index
    @articles = Article.all
  end

  def show
      @article = Article.find(params[:id])
  end

  protect_from_forgery with: :exception
end
