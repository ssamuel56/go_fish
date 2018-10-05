class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "The #{@rank} of #{@suit}"
  end

  def output_rank
    puts "#{@rank}"
  end
end

class Deck
  attr_accessor :cards, :ranks


  def initialize
    @ranks = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", 'J', 'Q', 'K', 'A']
    @suits = ['S', 'H', 'D', 'C']
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end

    @cards.shuffle!
  end

  def deal(number)
    da_hand = []
    number.times do
      tmpcard = @cards.pop
      tmpcard.output_card
      da_hand << tmpcard
    end
    da_hand
  end
  def deal_p2(number)
    number.times {@cards.shift.output_card}
  end
end

class Player
  attr_accessor :hand

  def initialize
    @hand = []
  end
end

def cls
  system('cls')
end

def the_check(p1hand, p2hand, deck)
  puts "What Rank do you want to check for?"
  input = $stdin.gets.chomp
  p2hand.each do |card|
    if card.rank == input
      puts "you got one"
      return true
    end
  end
  return false
end

deck = Deck.new
player1 = Player.new
player2 = Player.new
p1hand = player1.hand
p2hand = player2.hand
p1hand = deck.deal(7)
puts "\n \n"
p2hand = deck.deal(7)


the_check(p1hand, p2hand, deck)
