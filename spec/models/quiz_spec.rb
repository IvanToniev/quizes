require 'rails_helper'

describe Quiz do
  let(:some_quiz) { Fabricate(:quiz) }

  it 'should return user_id' do
    expect(some_quiz[:user_id]).to be == 42
  end

  it 'should return user title' do
    expect(some_quiz.title).to be == 'Pesho'
  end

  it 'should have questions' do
    expect(some_quiz.questions.length).to be > 0
  end
end
