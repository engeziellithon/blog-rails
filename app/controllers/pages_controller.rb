class PagesController < ApplicationController
  def index
    @articles = Article.last(4)
  end

  def contact
  end

  def about
  end
end

  
  