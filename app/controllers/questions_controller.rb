# frozen_string_literal: true

# controller for questions
class QuestionsController < ApplicationController
  def home
    @todays_date = Date.today.strftime("%B #{Date.today.day.ordinalize}")
  end

  def ask; end

  def answer
    @question = params[:question]
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.include? '?'
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
