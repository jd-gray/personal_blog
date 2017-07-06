class ProjectsController < ApplicationController
  before_action :find_project, only: [:show]

  def index
    @projects = Project.all.order("created_at desc").paginate(page: params[:page], per_page: 3)
  end

  def show; end

  private

  def find_project
    @project = Project.friendly.find(params[:id])
  end
end
