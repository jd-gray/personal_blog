require 'test_helper'

class Post < ActiveSupport::TestCase
  test 'valid user' do
    post = Post.new(title: 'Best Blog Ever', content: 'This is awesome')
    assert post.valid?
  end

  test 'invalid without name' do
    post = Post.new(title: 'Best Blog Ever')
    refute post.valid? 'post is valid without a title'
    assert_not_nil post.errors[:title], 'no validation error for title present'
  end

  test 'invalid without content' do
    post = Post.new(title: 'Best Blog Ever')
    refute post.valid?
    assert_not_nil post.errors[:email]
  end
end
