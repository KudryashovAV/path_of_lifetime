class ArticlesController < ApplicationController
  def index
    @article = Article.last
    # @hstory = Article.page(7).per(50)
    @hstory = Article.order(created_at: :desc)
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_url
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    url = prepare_video_url(article_params[:video_link])
    article_params.merge!(video_link: url)
    @article.update_attributes(article_params)
    redirect_to articles_url
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_url
  end

  private

  def article_params
    params.require(:article).permit(:body, :video_link, :header)
  end

  def prepare_video_url(url)
    url.gsub!("www.youtube.com/watch?v=", "youtube.com/embed/")
  end
end
