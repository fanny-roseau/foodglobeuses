class PagesController < ApplicationController
  def home
    @articles = Article.all.order("publication DESC").paginate(:page => params[:page], :per_page => 4, total_entries: 20)
  end

end
