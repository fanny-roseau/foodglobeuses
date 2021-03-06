class ArticlesController < ApplicationController
  before_action :find_article, only: [:show]

  def index
    @articles = []
    @search = params[:search]
    if params[:search] != ""
      Article.all.each do |article|
        if (article.restaurant.name).match(/#{params[:search]}/i).to_s.downcase == params[:search].downcase
          @articles << article
        end
        if (article.restaurant.city).match(/#{params[:search]}/i).to_s.downcase == params[:search].downcase
          @articles << article
        end
      end
    end
    @articles = @articles.uniq{|article| article.id}
  end

  def show
    @restaurant = @article.restaurant
    @number_reviews = Review.where(restaurant_id: @restaurant, published: "Published").count
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
