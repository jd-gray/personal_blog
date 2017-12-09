# frozen_string_literal: true

ActiveAdmin.register Post do
  permit_params :title, :content, :tag_list

  filter :title
  filter :content

  index do
    column :id
    column :title
    column :content do |post|
      truncate(post.content, omision: '...', length: 100)
    end
    column :created_at

    actions
  end

  show do
    attributes_table do
      row :title
      row :content
      row :tag_list
      row :created_at
    end
  end

  form do |f|
    f.inputs 'Create Post' do
      f.input :title
      f.input :content
      f.input :tag_list
    end
    f.actions
  end
end
