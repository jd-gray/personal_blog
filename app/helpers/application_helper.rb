# frozen_string_literal: true

module ApplicationHelper
  include ActsAsTaggableOn::TagsHelper

  def body_class
    controller.controller_name
  end

  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

  def markdown(content)
    renderer = HTMLwithPygments.new(hard_wrap: true, filter_html: true)
    Redcarpet::Markdown.new(renderer, markdown_options).render(content).html_safe
  end

  def markdown_options
    {
      autolink: true,
      no_intra_emphasis: true,
      disable_indented_code_blocks: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
  end
end
