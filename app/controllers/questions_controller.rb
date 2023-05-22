class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @questions = ['I am going to work']
    @answers = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]

    if @question.include?('?')
      @answer = @answers[1]
    elsif @question == @questions[0]
      @answer = @answers[0]
    else
      @answer = @answers[2]
    end
  end
end
