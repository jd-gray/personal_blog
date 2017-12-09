# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    posts = welcome_params ? Post.tagged_with(welcome_params) : Post.all
    @posts = posts.desc.paginate(page: params[:page], per_page: 5).decorate

    @tags = ActsAsTaggableOn::Tag.all
  end

  private

  def welcome_params
    params[:tag]
  end
end
