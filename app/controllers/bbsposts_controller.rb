# -*- coding: utf-8 -*-

class BbspostsController < ApplicationController

  include ActiveModel::ForbiddenAttributesProtection

	def new
	  @bbspost = Bbspost.new
	end

  def create
	  @bbspost = Bbspost.new(bbspost_params)

    if @bbspost.save
      flash[:success] = "投稿ありがとうございます"
	    redirect_to root_path
    else
      flash.now[:danger] = "いずれかのデータが空、もしくは長すぎます"
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
