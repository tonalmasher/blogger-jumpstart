class ArticlesController < ApplicationController
  include ArticlesHelper

  def create
      @article = Article.new(article_params)
      @article.save

      flash.notice = "Post '#{@article.title}' Created!"

      redirect_to article_path(@article)
  end

  # def show
  #   @comment = Comment.new
  #   @comment.article_id = @article.id
  # end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    flash.notice = "Post '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    flash.notice = "Post '#{@article.title}' Deleted!"

    redirect_to articles_path
  end

end
