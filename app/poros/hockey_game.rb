class HockeyGame
  attr_accessor :gamePk,
                :abstractGameState,
                :codedGameState,
                :detailedState,
                :statusCode,
                :home_score,
                :away_score,
                :home,
                :away

  def initialize(data_hash)
    @gamePk = data_hash[:gamePk]
    @abstractGameState = data_hash[:status][:abstractGameState]
    @codedGameState = data_hash[:status][:codedGameState]
    @detailedState = data_hash[:status][:detailedState]
    @statusCode = data_hash[:status][:statusCode]
    @home_score = data_hash[:teams][:home][:score]
    @away_score = data_hash[:teams][:away][:score]
    @home = data_hash[:teams][:home][:team][:name]
    @away = data_hash[:teams][:away][:team][:name]
    @winner = winner
  end

  def winner
    return 'tbd' unless @abstractGameState == 'Final'

    home_score > away_score ? @home : @away
  end
end
