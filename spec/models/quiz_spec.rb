require 'rails_helper'

describe Quiz do
  let(:some_quiz) {
    Fabricate(:quiz, title: 'A ruby quiz') do
      questions { [Fabricate(:question),Fabricate(:question, title: 'Second question',description: 'Second q description',content: 'Second q content',answer: 'Second q answer'),Fabricate(:question, title: 'Third question',description: 'Third q description',content: 'Third q content',answer: 'Third q answer')] }
    end
  }

  it 'should return user_id' do
    expect(some_quiz[:user_id]).to be == (2)
  end

  it 'should return user title' do
    expect(some_quiz.title).to be == 'A ruby quiz'
  end

  it 'should have questions' do
    expect(some_quiz.questions.length).to be > 0
  end

  context "sorting" do
  end
end
