class WelcomeController < ApplicationController
  def index
    @posts = Post.all.paginate(page: params[:page], per_page: 5).decorate
  end
end
