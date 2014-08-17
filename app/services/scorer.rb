class CardScorer
  def initialize(cards)
    @cards = cards

  end
  def score
    values = {
      "2" => 2,
      "3" => 3,
      "4" => 4,
      "5" => 5,
      "6" => 6,
      "7" => 7,
      "8" => 8,
      "9" => 9,
      "10" => 10,
      "Jack" => 10,
      "Queen" => 10,
      "King" => 10,
      "Ace" => 11
    }

  score = 0
  aces = 0
  @cards.each do |card|
    aces += 1 if card == "Ace"
    score += values[card]
  end

  while score > 21 && aces > 0 do
    score -=10
    aces -= 1
  end

  return score

  end
end

hand = CardScorer.new(["Ace", "2", "9"])
puts hand.score

hand = CardScorer.new(["Ace", "9", "Ace"])
puts hand.score