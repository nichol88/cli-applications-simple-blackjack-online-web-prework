def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  x = 0
  while x == 0
    x = rand(11)
  end

  return x
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(player_card_total)
  # code #end_game here
  puts "Sorry, you hit #{player_card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_round = deal_card + deal_card
  display_card_total(first_round)
  first_round
end

def hit?(current_total)
  # code hit? here
  prompt_user
  response = get_user_input.downcase
  if response == "y"
    deal_card
  elsif response == "s"
    end_game
  else
    invalid_command
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
