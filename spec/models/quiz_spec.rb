require 'rails_helper'

  describe 'Quiz' do

    it 'create new quiz' do
      @quiz = Quiz.create(title: 'ruby quiz for beginners')
      expect(@quiz.id).to eq(1)
      expect(@quiz.title).to eq('ruby quiz for beginners')
    end
  end


