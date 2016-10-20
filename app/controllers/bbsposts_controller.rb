class BbspostsController < ApplicationController
  def create
	  @bbspost = Bbspost.create
	  @bbspost.title = params[:title]
	  @bbspost.username = params[:username]
	  @bbspost.content = params[:content]
	  @bbspost.save
  end

  def destroy
  end
end
