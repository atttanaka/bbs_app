class BbspostsController < ApplicationController

  include ActiveModel::ForbiddenAttributesProtection

	def new
	  @bbspost = Bbspost.new
	end

  def create
	  @bbspost = Bbspost.new(bbspost_params)

    if @bbspost.save
	    redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
  end

  private

    def bbspost_params
      params.require(:bbspost).permit(:username, :title, :content)
    end

end
