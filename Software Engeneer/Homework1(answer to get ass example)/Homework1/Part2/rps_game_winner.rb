class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
require 'json'

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2  
    
    if game[0][1] =="R" && game[1][1] == "S"
        winner = game[0]
    elsif game[0][1] =="S" && game[1][1] == "R"
        winner = game[1]
    elsif game[0][1] =="R" && game[1][1] == "P"
        winner = game[1]
    elsif game[0][1] =="P" && game[1][1] == "R"
        winner = game[0]
    elsif game[0][1] =="P" && game[1][1] == "S"
        winner = game[1]
    elsif game[0][1] =="S" && game[1][1] == "P"
        winner = game[0]
    elsif game[0][1] == game[1][1]
        if game[0][1] == "R" || game[0][1] == "P" || game[0][1] == "S"
            winner = game[0]
        else
            raise NoSuchStrategyError 
        end 
    else 
        raise NoSuchStrategyError
    end
    
    return winner
end

def array_detect(array_string)
    begin
    json = JSON.parse array_string
    if json.is_a? Array
        puts(rps_game_winner(json))
    else
        # not an array
    end
    rescue JSON::ParserError => e
    puts e.message
    # not a valid json string
    end
end

input = gets.chomp
array_detect(input)