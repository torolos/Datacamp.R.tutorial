# Numeric vector
numeric_vector <- c(1, 10, 49)
# Character vector
character_vector <- c("a", "b", "c")
# Boolean vector
boolean_vector <- c(TRUE, FALSE, FALSE)

# Poker winnings from Monday to Friday
poker_vector <- c(140, 10, -80, -25, 180, -20, 30)
# Roulette winnings from Monday to Friday
roulette_vector <- c(-40, 10, -95, 76, -30, 50, -110)
# Days of week vector
week_vector <- c("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun")

# Assign days for poker_vector and roulette vector
names(poker_vector) <- week_vector
names(roulette_vector) <- week_vector

print(poker_vector)
print(roulette_vector)
# Calculate win/loss by day
total_vector <- poker_vector + roulette_vector
print(total_vector)
# Calculate total win/loss per game
total_week_poker <- sum(poker_vector)
total_week_roulette <- sum(roulette_vector)
print(total_week_poker)
print(total_week_roulette)
# Calculate total week win/loss
total_week <- sum(c(sum(poker_vector), sum(roulette_vector)))
print(total_week)
# Check whether roulette made the most earnings
total_week_roulette > total_week_poker
# Selections
poker_wed <- poker_vector[3]
print(poker_wed)
poker_midweek <- poker_vector[c(3, 4, 5)]
print(poker_midweek)
poker_midweek <- poker_vector[3:5]
print(poker_midweek)

mon_to_fri <- c("Mon", "Tue", "Wed", "Thu", "Fri")
tue_to_sat <- c("Tue", "Wed", "Thu", "Fri", "Sat")
poker_mon_to_fri <- poker_vector[mon_to_fri]
poker_tue_to_sat <- poker_vector[tue_to_sat]
print(poker_mon_to_fri)
print(poker_tue_to_sat)
print(mean(poker_mon_to_fri))
print(mean(poker_tue_to_sat))

roulette_mon_to_fri <- roulette_vector[mon_to_fri]
roulette_tue_to_sat <- roulette_vector[tue_to_sat]
print(roulette_mon_to_fri)
print(roulette_tue_to_sat)
print(mean(roulette_mon_to_fri))
print(mean(roulette_tue_to_sat))

# Comparison 1. Compare earnings per day
comparison_week <- poker_vector >= roulette_vector
names(comparison_week) <- week_vector
print(comparison_week)

# Comparison 2. Days when poker/roulette had wins
roulette_win <- roulette_vector > 0
poker_win <- poker_vector > 0
roulette_winning_days <- roulette_vector[roulette_win]
poker_winning_days <- poker_vector[poker_win]

print(roulette_winning_days)
print(poker_winning_days)

