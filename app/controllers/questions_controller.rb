class QuestionsController < ApplicationController

  def ask
  end

  def answer
    coach_tranquilizer = "I am going to work right now!"
    @question = params[:question]
    if @question == nil
      @answer = ""
    elsif @question == coach_tranquilizer || @question == coach_tranquilizer.upcase
      @answer = "Cool"
    elsif @question.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
