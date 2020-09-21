class AnswerSetsController < ApplicationController

  def create_agree
    @answer_set = current_user.answer_sets.new(news_topic_id: params[:news_topic_id], agree: 1, non_agree: 0)
    if @answer_set.save
      flash[:success] = "回答しました!"
    else
      flash.now[:error] = "回答に失敗しました"
      @news_topics = NewsTopic.find(params[:news_topic_id])
      render template: 'news_topics/show'
    end
    @news_topics = NewsTopic.find(params[:news_topic_id])
    @answer_set_count = AnswerSet.where(news_topic_id: params[:news_topic_id], agree: 1).count
  end


  def create_non_agree
    @non_answer = current_user.answer_sets.new(news_topic_id: params[:news_topic_id], agree: 0, non_agree: 1)
    if @non_answer.save
      flash.now[:success] = "回答しました!"
    else
      flash.now[:error] = "回答に失敗しました"
      @news_topics = NewsTopic.find(params[:news_topic_id])
      render template: 'news_topics/show'
    end
    @news_topics = NewsTopic.find(params[:news_topic_id])
    @non_answer_count = AnswerSet.where(news_topic_id: params[:news_topic_id], non_agree: 1).count
  end

end
