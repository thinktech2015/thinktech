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

  def product_3dproduct
    render :layout => 'blog'
  end

  def product_appointment
    render :layout => 'blog'
  end

  def product_hr_industry
    render :layout => 'blog'
  end

  def product_restaurant
    render :layout => 'blog'
  end

  def technology_cloud
    render :layout => 'blog'
  end

  def technology_cms
    render :layout => 'blog'
  end

  def technology_mobile
    render :layout => 'blog'
  end

  def technology_web
    render :layout => 'blog'
  end

end

