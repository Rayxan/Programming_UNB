##Incomplete

def rps_tournament_winner(game)
    game.each do |battle| 
        list = rps_game_winner(battle)
        puts list
    end
end

game = 
[
    [
        [ ["Kristen", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"], ["Michael", "S"] ],
    ],
    [
        [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
    ]
]

winner = rps_tournament_winner(game)

# puts "The champion is #{winner}"

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2

    if game[0][1] == "R" && game[1][1] == "S"
        winner = game[0]
    elsif game[0][1] == "S" && game[1][1] == "R"
        winner = game[1]
    elsif game[0][1] == "S" && game[1][1] == "P"
        winner = game[0]
    elsif game[0][1] == "P" && game[1][1] == "S"
        winner = game[1]
    elsif game[0][1] == "P" && game[1][1] == "R"
        winner = game[0]
    elsif game[0][1] == "R" && game[1][1] == "P"
        winner = game[1]
    elsif game[0][1] == game[1][1]
        winner = -1
    else
        raise NoSuchStrategyError
    end
    return winner
end