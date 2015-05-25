class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]

  def show

    # Let's DYNAMICALLY build the markers for the view.
    @markers = Gmaps4rails.build_markers(@article) do |article, marker|
      marker.lat article.restaurant.latitude
      marker.lng article.restaurant.longitude
      marker.picture({
      :url => "http://lefooding.com/assets/cpt_normal.png",
      :width =>  30,
      :height => 37
     })
    end

  end

  private

  def find_article
    @article = Article.find(params[:id])
  end


end
