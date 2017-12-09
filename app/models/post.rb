# frozen_string_literal: true

class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_taggable

  validates :title, presence: true
  validates :content, presence: true

  scope :desc, lambda {
    order('posts.created_at DESC')
  }
end
