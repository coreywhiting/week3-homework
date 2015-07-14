class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def create
    puts 'params'
    puts params
    Place.create(title: params["title"], url: params["url"], admission_price: params["admission_price"], description: params["description"])

    redirect_to root_url
  end

  def edit
    puts 'we will wedit'
    @place = Place.find_by(:id => params["id"])
  end

  def update
    puts 'we will update'
    @place = Place.find_by(:id => params["id"])
    @place.update(title: params["title"], url: params["url"], admission_price: params["admission_price"], description: params["description"])
    
    redirect_to root_url
  end

  def show
    @place = Place.find_by(:id => params["id"])
    puts 'place'
    puts @place
  end

  def delete
    place = Place.find_by(id: params["id"])
     if !place.nil?
      place.delete
     end

    redirect_to root_url
  end

end