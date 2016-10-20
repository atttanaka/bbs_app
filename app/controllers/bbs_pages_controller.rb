# coding: utf-8
class BbsPagesController < ApplicationController

  def home
    @bbspost ||= Bbspost.create
    @bbspost.username ||= "Tokyo Taro"
    @bbspost.title ||= "Sample Title"
    @bbspost.content ||= "lorem ipsum "
#    @bbs = Bbspost.create
#    @bbs.username = 'Sample Name'
#    @bbs.title = 'Sample Title'
#    @bbs.content = 'Test contents,no meaning.'
  end

  def help
  end
end
