# frozen_string_literal: true

module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def body_class
    controller.controller_name.to_s
  end
end
