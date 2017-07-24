ActiveAdmin.register Post do
  permit_params :title, :content

  index do
    column :id
    column :title
    column :content do |post|
      truncate(post.content, omision: "...", length: 100)
    end
    column :created_at
    
    actions
  end

  form do |f|
    f.inputs "Create Post" do
      f.input :title
      f.input :content
    end
    f.actions
  end
end
