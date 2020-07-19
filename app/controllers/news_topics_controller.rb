class NewsTopicsController < ApplicationController

  def index
  end

  def show
    @news_topics = NewsTopic.all
  end

  
end
