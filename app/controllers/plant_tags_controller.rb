class PlantTagsController < ApplicationController
  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tag = Tag.find(params[:plant_tag][:tag])
    PlantTag.create(plant: @plant, tag: @tag)
    redirect_to garden_path(@plant.garden)
  end
end
