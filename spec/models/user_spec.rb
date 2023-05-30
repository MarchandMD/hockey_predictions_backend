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

    describe '#calculate_total_points' do
      context 'user has made no predictions' do
        it 'total is 0' do
          expect(@user.calculate_total_points).to eq(0)
        end
      end

      context 'user has made 1 prediction that is correct' do
        it 'total is 1' do
          create(:prediction, user_id: @user.id)
          expect(@user.predictions.count).to eq(1)
        end
      end
    end
  end
end
