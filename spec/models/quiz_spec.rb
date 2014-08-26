require 'rails_helper'

describe Quiz do
  before do
    @quiz = Quiz.create({:user_id => 42, :title => 'Pesho'})
  end

  it 'should return user_id' do
    expect(@quiz[:user_id]).to be == 42
  end
end
