class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title,       presence: true
  validates :description, presence: true
  validates :link,        presence: true

end
