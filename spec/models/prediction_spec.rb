require 'rails_helper'

RSpec.describe Prediction, type: :model do
  before(:each) do
    @user = create(:user)
    @prediction = create(:prediction)
  end
  describe 'relationships' do
    it { should belong_to :user }
  end
end
