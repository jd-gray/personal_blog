class Post < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_taggable

  validates :title, presence: true
  validates :content, presence: true
end
