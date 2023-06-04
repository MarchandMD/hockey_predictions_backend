require 'rails_helper'

RSpec.describe Prediction, type: :model do
  before(:each) do
    @user = create(:user)
    @prediction = create(:prediction, user: @user)
  end

  describe 'relationships' do
    it { should belong_to :user }
  end

  describe 'instance methods' do
    describe '#actual_winner' do
      it 'determines the actual winner of a completed hockey game' do
        # code here
      end
    end
  end
end
