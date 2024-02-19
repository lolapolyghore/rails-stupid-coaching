class QuestionsController < ApplicationController

  def home
  end

  def ask
  end

  def answer
    @answer = coach_answer
  end

  def coach_answer
    question = params[:question]
    if question.downcase == 'I am going to work'
      'Great!'
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
