require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = create(:user)
  end

  describe 'relationships' do
    it { should have_many :predictions }
  end

  describe 'instance variables' do
    it 'has @first_name, @last_name, @email and @password' do
      expect(@user.first_name).to be_a String
      expect(@user.last_name).to be_a String
      expect(@user.email).to be_a String
      expect(@user.password).to be_a String
    end
  end
end
