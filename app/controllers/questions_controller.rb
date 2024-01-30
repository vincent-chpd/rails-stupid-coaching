class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if params[:answer] == 'I am going to work'
      @answer = "Great!"
    elsif params[:answer].is_a?(String) && params[:answer].include?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
