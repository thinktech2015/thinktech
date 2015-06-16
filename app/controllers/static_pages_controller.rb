class StaticPagesController < ApplicationController
  
  def index
  	@user = User.new
    @search = Search.new
  end

  def service_web
  	render :layout => 'blog'
  end

  def service_app
  	render :layout => 'blog'
  end

  def service_seo
  	render :layout => 'blog'
  end

  def service_custom
  	render :layout => 'blog'
  end

end
