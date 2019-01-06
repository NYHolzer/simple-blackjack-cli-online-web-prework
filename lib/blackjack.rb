def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand (1..11)
end

def display_card_total (card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  card_total = 0 
  2.times do
    deal_card
    card_total += deal_card
  end
  display_card_total (card_total)
  return card_total
end


def hit? (card_total)
  prompt_user
  user_input = get_user_input
  card_total
  
  if user_input == "h"
    card_total += deal_card
  elsif user_input == "s" 
    card_total
  else
    invalid_command
    prompt_user
  end
  return card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  until card_total >= 21
    hit? (card_total)
  end
  end_game
end
    
