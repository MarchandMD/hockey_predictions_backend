class HockeyGame
  attr_accessor :gamePk,
                :abstractGameState,
                :codedGameState,
                :detailedState,
                :statusCode,
                :home_score,
                :away_score,
                :home,
                :away,
                :home_id,
                :away_id,
                :datetime

  def initialize(data_hash)
    @gamePk = data_hash[:gamePk]
    @abstractGameState = data_hash[:status][:abstractGameState]
    @codedGameState = data_hash[:status][:codedGameState]
    @detailedState = data_hash[:status][:detailedState]
    @statusCode = data_hash[:status][:statusCode]
    @home_score = data_hash[:teams][:home][:score]
    @away_score = data_hash[:teams][:away][:score]
    @home = data_hash[:teams][:home][:team][:name]
    @home_id = data_hash[:teams][:home][:team][:id]
    @away = data_hash[:teams][:away][:team][:name]
    @away_id = data_hash[:teams][:away][:team][:id]
    @datetime = data_hash[:datetime]
    @winner = winner
  end

  def winner
    return 'tbd' unless @abstractGameState == 'Final'

    home_score > away_score ? @home : @away
  end
end
