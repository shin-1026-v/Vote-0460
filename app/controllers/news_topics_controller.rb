class NewsTopicsController < ApplicationController

  def index
    @news_topics = NewsTopic.all
  end

  def show
    @news_topics = NewsTopic.find(params[:id])
    @alredy_answer = current_user.answer_sets.find_by(news_topic_id: params[:id])
    @answer_set_count = AnswerSet.where(news_topic_id: @news_topics.id, agree: 1).count
    @non_answer_count = AnswerSet.where(news_topic_id: @news_topics.id, non_agree: 1).count
  end

  def destroy
    NewsTopic.find(params[:id]).destroy
    flash[:success] = "削除しました"
    redirect_to news_topics_url
  end  
end
