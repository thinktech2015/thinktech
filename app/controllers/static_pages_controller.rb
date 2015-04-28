class StaticPagesController < ApplicationController
  def index
  	@user = User.new
  end

  def help
  	@user = User.new
  end
end
