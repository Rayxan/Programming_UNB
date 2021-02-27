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

# game = [ [ "Kristen", "R" ], [ "Pam", "S" ] ] #-> Kristen
# game = [ [ "Kristen", "S" ], [ "Pam", "R" ] ]#->Pam
# game = [ [ "Kristen", "S" ], [ "Pam", "P" ] ]#->Kristen
# game = [ [ "Kristen", "P" ], [ "Pam", "S" ] ]#->Pam
# game = [ [ "Kristen", "P" ], [ "Pam", "R" ] ]#->Kristen
game = [ [ "Kristen", "R" ], [ "Pam", "P" ] ]#->Pam
# game = [ [ "Kristen", "P" ], [ "Pam", "P" ] ]#->Kristen
# game = [ [ "Kristen", "R" ], [ "Pam", "R" ] ]#->Kristen
# game = [ [ "Kristen", "S" ], [ "Pam", "S" ] ]#->Kristen
# game = [ [ "Kristen", "s" ], [ "Pam", "S" ] ]#->Kristen


winner = rps_game_winner(game)

if winner == game[0]
    print "#{game[0]} wins since #{game[0][1]} > #{game[1][1]} \n"
    puts game[0][0] + " is the winner"
elsif winner == game[1]
    print "#{game[1]} wins since #{game[1][1]} > #{game[0][1]} \n"
    puts game[1][0] + " is the winner"
else
    print "#{game[0]} wins, because he/she was the first to play \n"
    puts game[0][0] + " is the winner" 
end

