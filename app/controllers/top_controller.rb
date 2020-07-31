class TopController < ApplicationController

  def index
    @news_topics = NewsTopic.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
