class WelcomeController < ApplicationController
  def index
    @posts = Post.all.order('created_at desc').decorate
  end
end
