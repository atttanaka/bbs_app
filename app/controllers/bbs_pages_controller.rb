# coding: utf-8
class BbsPagesController < ApplicationController

  def home
   @bbspost = Bbspost.page(params[:page])

#		@bbspost = Bbspost.all
#  	@bbspost[:title] = 'Sample Title'
#  	@bbspost[:username] = 'Sample Name'
#  	@bbspost[:content] = 'Test contents,no meaning.'

#    @bbspost = Bbspost.create
#    @bbspost.username = 'Sample Name'
#    @bbspost.title = 'Sample Title'
#    @bbspost.content = 'Test contents,no meaning.'
  end

  def help
  end
end
