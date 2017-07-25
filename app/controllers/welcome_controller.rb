class WelcomeController < ApplicationController
  def index
    @posts = params[:tag] ? Post.tagged_with(params[:tag]) : Post.all.order('created_at desc')
    @posts = @posts.paginate(page: params[:page], per_page: 5).decorate
  end
end
