require 'rails_helper'

describe 'HockeyGame' do
  before(:each) do
    attributes = {
      gamePk: 1,
      status: { abstractGameState: "Preview", codedGameState: "1", detailedState: "Scheduled", statusCode: "1", startTimeTBD: false },
      teams: {
        home: { leagueRecord: { wins: 0, losses: 1, type: "league" }, score: 0, team: { id: 10, name: "Toronto Maple Leafs", link: "/api/v1/teams/10" } },
        away: { leagueRecord: { wins: 1, losses: 0, type: "league" }, score: 0, team: { id: 14, name: "Tampa Bay Lightning", link: "/api/v1/teams/14" } }
      }
    }
    @hockey_game = HockeyGame.new(attributes)

    completed_game_attributes = {
      gamePk: 1,
      status: { abstractGameState: "Final",
                codedGameState: "7",
                detailedState: "Final",
                statusCode: "7",
                startTimeTBD: false },
      teams: {
        home: { leagueRecord: { wins: 1, losses: 1, type: "league" }, score: 7, team: { id: 10, name: "Toronto Maple Leafs", link: "/api/v1/teams/10" } },
        away: { leagueRecord: { wins: 1, losses: 1, type: "league" }, score: 2, team: { id: 14, name: "Tampa Bay Lightning", link: "/api/v1/teams/14" } }
      }
    }

    @completed_hockey_game = HockeyGame.new(completed_game_attributes)
  end

  it 'exists' do
    expect(@hockey_game).to be_a HockeyGame
    expect(@hockey_game.gamePk).to eq(1)
    expect(@hockey_game.abstractGameState).to eq("Preview")
    expect(@hockey_game.codedGameState).to eq("1")
    expect(@hockey_game.detailedState).to eq("Scheduled")
    expect(@hockey_game.statusCode).to eq("1")
    expect(@hockey_game.home_score).to eq(0)
    expect(@hockey_game.away_score).to eq(0)
    expect(@hockey_game.home).to eq("Toronto Maple Leafs")
    expect(@hockey_game.away).to eq("Tampa Bay Lightning")
  end
  describe '#winner' do
    describe 'sad path' do
      it 'returns tbd if the game is not final' do
        expect(@hockey_game.winner).to eq("tbd")
      end
    end
    describe 'happy path' do
      it 'returns the winner of the game' do
        expect(@completed_hockey_game.winner).to eq("Toronto Maple Leafs")
      end
    end
  end
end
