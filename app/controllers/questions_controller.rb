class QuestionsController < ApplicationController
  def ask
  end

  def answer
    good_message = "i am going to work"
    @message_user = params[:question]

    if @message_user == good_message || @message_user == good_message.capitalize
      @response_coach = "Great!"
      elsif @message_user.end_with?("?")
        @response_coach = "Silly question, get dressed and go to work!"
      else
        @response_coach = "I don't care, get dressed and go to work!"
    end
  end
end
