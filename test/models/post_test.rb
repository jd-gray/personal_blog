require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'valid user' do
    post = Post.new(title: 'Best Blog Ever', content: 'This is awesome')
    assert post.valid?
  end
end
