class TasksController < ApplicationController

  def create
    Task.create!(params[:name])
  end
end
