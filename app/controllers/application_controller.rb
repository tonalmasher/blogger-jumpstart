class ApplicationController < ActionController::Base

  def index
    @articles = Article.all
  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to article_path(@article)
  end

  def new
      @article = Article.new
  end

  def show
      @article = Article.find(params[:id])
      @comment = Comment.new
      @comment.article_id = @article.id
  end



  protect_from_forgery with: :exception
end
