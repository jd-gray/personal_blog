class PostDecorator < ApplicationDecorator
  delegate_all

  def content
    h.truncate object.content, length: 150
  end

  def created_at
    object.created_at.strftime("%A, %b %d %Y")
  end
end
