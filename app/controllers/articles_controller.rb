class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @articles = Article.paginate(:page => params[:page], :per_page => 5).order('created_at DESC')
    render :layout => 'blog' 
  end

  def show
    @article = Article.friendly.find(params[:id])
    render :layout => 'blog'
  end

  def new
    @article = Article.new
    render :layout => 'blog'
  end

  def create
    @article = Article.new(article_params)
    @articles = Article.all
    count = 0
    @articles.each do |a|
      if @article.slug == a.slug
        count = 1
      end
    end
    if count == 0
      @article.save
      redirect_to articles_path
    elsif count == 1
      flash[:notice] =  " * Change the url name"
      flash.discard(:notice)
      render action: "new"
    end
  end

  def edit
    @article = Article.friendly.find(params[:id])
    render :layout => 'blog'
  end

  def update
    @article = Article.friendly.find(params[:id])
    if @article.update_attributes(article_params)
      redirect_to articles_path, notice: "The article has been successfully updated."
    else
      render action: "edit"
    end
  end

  def delete_article
    @article = Article.friendly.find(params[:id])
    @article.destroy
    redirect_to articles_path    
  end

private

  def article_params
    params.require(:article).permit(:title, :body, :slug)
  end
  
end