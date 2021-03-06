

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total card_total 
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets
end

def end_game card_total
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  return sum
end

def hit? current_total
  prompt_user
  input = get_user_input
  if input == "h"
    current_total += deal_card
  elsif input != "h" && input != "s"
    invalid_command
    prompt_user
  end
  return current_total
end

def invalid_command
  puts "Please enter a valid command."
end

#####################################################
# get every test to pass before coding runner below #
#####################################################
# rspec failtures: 
#runner calls on the #welcome method, 
  # then on the #initial_round method, 
  # then calls #hit? and #display_card_total methods
  # -until- the card sum is greater than 21,
  # then calls on the #end_game method
def runner 


  welcome
  current_total = initial_round # 10 + 10 
    until current_total > 21
      hit? current_total
      current_total += deal_card
      display_card_total current_total
    end
    end_game current_total
end