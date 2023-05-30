class User < ApplicationRecord
  has_many :predictions

  def calculate_total_points
    points = predictions.count { |prediction| HockeyDataFacade.new.actual_winner(gamePk: prediction.gamePk) == prediction.expected_winner }
    update(total_points: points)
  end
end
