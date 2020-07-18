class TopController < ApplicationController

  def index
    @news_topics = NewsTopic.select("title", "content")
  end

  def new
  end

  def show
  end

  def edit
  end
end
