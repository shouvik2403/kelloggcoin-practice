# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

#initiatilizing a user array and setting balance = 0

kellogcoin = [
  {"user" => "ben", "balance" => 0},
  {"user" => "brian", "balance" => 0},
  {"user" => "evan", "balance" => 0},
  {"user" => "anthony", "balance" => 0}
]

# Loop through blockchain and modify balances to kellogcoin
for txn in blockchain

  #check for debits and deduct balances

  if txn["from_user"] == "ben"
    kellogcoin[0]["balance"] = kellogcoin[0]["balance"] - txn["amount"]
  elsif txn["from_user"] == "brian"
    kellogcoin[1]["balance"] = kellogcoin[1]["balance"] - txn["amount"]
  elsif txn["from_user"] == "evan"
    kellogcoin[2]["balance"] = kellogcoin[2]["balance"] - txn["amount"]
  elsif txn["from_user"] == "anthony"
    kellogcoin[3]["balance"] = kellogcoin[3]["balance"] - txn["amount"]    
  else
  end

  #check for credits and add balances

  if txn["to_user"] == "ben"
    kellogcoin[0]["balance"] = kellogcoin[0]["balance"] + txn["amount"]
  elsif txn["to_user"] == "brian"
    kellogcoin[1]["balance"] = kellogcoin[1]["balance"] + txn["amount"]
  elsif txn["to_user"] == "evan"
    kellogcoin[2]["balance"] = kellogcoin[2]["balance"] + txn["amount"]
  elsif txn["to_user"] == "anthony"
    kellogcoin[3]["balance"] = kellogcoin[3]["balance"] + txn["amount"]    
  else
  end

end

# print balances

for id in kellogcoin
  puts "#{id["user"]}'s Kelloggcoin balance is #{id["balance"]}"
end