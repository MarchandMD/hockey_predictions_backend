require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    user = create(:user)
  end

  describe 'relationships' do
    it { should have_many :predictions }
  end
end
