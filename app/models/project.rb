class Project < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title,       presence: true
  validates :description, presence: true
  validates :link,        presence: true

  has_attached_file :image, :styles => { :medium => "300x300>", :small => "150x150>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
