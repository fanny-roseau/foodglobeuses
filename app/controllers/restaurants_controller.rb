class RestaurantsController < ApplicationController

  def mood
    @restaurants = Restaurant.where(mood: params[:mood])
  end

  def amsterdam
    @restaurants = Restaurant.where(city: "Amsterdam")
  end

  def barcelone
    @restaurants = Restaurant.where(city: "Barcelone")
  end

  def berlin
    @restaurants = Restaurant.where(city: "Berlin")
  end

  def cap_ferret
    @restaurants = Restaurant.where(city: "Cap-ferret")
  end

  def hanoi
    @restaurants = Restaurant.where(city: "Hanoi")
  end

  def jerusalem
    @restaurants = Restaurant.where(city: "Jérusalem")
  end

  def lisbonne
    @restaurants = Restaurant.where(city: "Lisbonne")
  end

  def londres
    @restaurants = Restaurant.where(city: "Londres")
  end

  def los_angeles
    @restaurants = Restaurant.where(city: "Los Angeles")
  end

  def marrakech
    @restaurants = Restaurant.where(city: "Marrakech")
  end

  def montreal
    @restaurants = Restaurant.where(city: "Montreal")
  end

  def new_york
    @restaurants = Restaurant.where(city: "New-York")
  end

  def paris
    @restaurants = Restaurant.where(city: "Paris").paginate(:page => params[:page], :per_page => 9, total_entries: 19)
  end

  def piana
    @restaurants = Restaurant.where(city: "Piana")
  end

  def tel_aviv
    @restaurants = Restaurant.where(city: "Tel-aviv")
  end

  def san_francisco
    @restaurants = Restaurant.where(city: "San Francisco")
  end

   def miami
    @restaurants = Restaurant.where(city: "Miami")
  end

   def nouvelle_orleans
    @restaurants = Restaurant.where(city: "Nouvelle-Orléans")
  end

end
