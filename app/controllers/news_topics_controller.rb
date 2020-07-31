class NewsTopicsController < ApplicationController

  def index
    @news_topics = NewsTopic.all
      
  end

  def show
    @news_topics = NewsTopic.find(params[:id])
  end

  def destroy
    NewsTopic.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to news_topics_url
  end

  
end
