class User < ApplicationRecord
  has_many :predictions

  enum role: {
    default: 0,
    admin: 1
  }

  def calculate_total_points
    points = predictions.count { |prediction| HockeyDataFacade.new.actual_winner(gamePk: prediction.gamePk) == prediction.expected_winner }
    update(total_points: points)
  end
end
