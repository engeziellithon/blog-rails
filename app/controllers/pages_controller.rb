class PagesController < ApplicationController
  def index
    @articles = Article.all
    @articles = Article.paginate(:page => params[:page], :per_page => 1)
  end

  def contact
  end

  def about
  end
end

  
  