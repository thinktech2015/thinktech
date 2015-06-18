class SearchesController < ApplicationController

	def create
    @search = Search.new(search_params)

    respond_to do |format|
      if @search.save
        
         SearchMailer.welcome_email(@search).deliver
         SearchMailer.query_mail(@search).deliver

        format.html { redirect_to :back }
        #flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
        format.json { render action: 'show', status: :created, location: @search }
      else
        format.html { render action: 'new' }
        format.json { render json: @search.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  
     def search_params
      params.require(:search).permit(:name, :email, :phone, :site)
    end

end
