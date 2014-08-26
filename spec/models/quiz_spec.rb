require 'rails_helper'

describe Quiz do
  let(:quiz) { Fabricate(:quiz) }

  context "sorting" do
    it 'should return user_id' do
      expect(quiz[:user_id]).to eq(2)
    end

    it 'move down shoud increase show_order' do

    end
  end
end
