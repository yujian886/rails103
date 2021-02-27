class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @groups = Group.new(group_params)
    @groups = Group.save
  end

  def group_params
    garams.require(:group).permit(:title, :description)
  end 
end
