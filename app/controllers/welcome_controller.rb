# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @posts = params[:tag] ? Post.tagged_with(params[:tag]) : Post.all
    @posts = @posts.order('created_at desc').paginate(page: params[:page], per_page: 5).decorate

    @tags = ActsAsTaggableOn::Tag.all
  end
end
