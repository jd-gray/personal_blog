# frozen_string_literal: true

class PostsDecorator < Draper::CollectionDecorator
  delegate :current_page, :total_pages, :limit_value,
           :entry_name, :total_count, :offset_value, :last_page?
end
