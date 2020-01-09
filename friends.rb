def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  if (person[:favourites][:snacks].include? food)
    return true
  else
    return false
  end
end

def add_friend(person, friend)
  person[:friends].push(friend)
  return person[:friends].count
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
  return person[:friends].count
end

def add_money(people)
  total_money = 0
  for person in people
    total_money += person[:monies]
  end
  return total_money
end

def loan_monies(lender, leanee, money)
  leanee[:monies] += money
  lender[:monies] -= money
end

def food_join(people)
  join_food = []
  for person in people
    join_food += person[:favourites][:snacks]
  end
  return join_food
end

def no_friends(people)
  array_no_friend = []
  for person in people
    if person[:friends].count == 0
      array_no_friend.push(person[:name])
    end
end
return array_no_friend
end
