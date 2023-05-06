class PredictionSerializer
  include JSONAPI::Serializer

  attributes :expected_winner, :gamePk
end