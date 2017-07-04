class PostsController < ApplicationController
  before_action :find_post, only: [:show]
  before_action :authenticate_user!, except: [:show]

  def show; end

  private

  def post_params
    params.require(:post).permit(:title, :content, :slug)
  end

  def find_post
    @post = Post.friendly.find(params[:id])
  end
end
