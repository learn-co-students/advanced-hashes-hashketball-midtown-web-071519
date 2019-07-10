# Write your code here!
require "pry"

def game_hash
      game = {
      home: {
      team_name: "Brooklyn Nets"
      colors: ["Black", "White"]

    players: [{
    name: "Alan Anderson"
    number: 0
    shoe: 16
    points: 22
    rebounds: 12
    assists: 12
    steals: 3
    blocks: 1
    slam_dunks: 1
    }

    {name: "Reggie Evans"
    number: 30
    shoe: 14
    points: 12
    rebounds: 12
    assists: 12
    steals: 12
    blocks: 12
    slam_dunks: 7}

    {name: "Brook Lopez"
    number: 11
    shoe: 17
    points: 17
    rebounds: 19
    assists: 10
    steals: 3
    blocks: 1
    slam_dunks: 15}

    {name: "Mason PLumlee"
    number: 1
    shoe: 19
    points: 26
    rebounds: 11
    assists: 6
    steals: 3
    blocks: 8
    slam_dunks: 5}

    {name: "Jason Terry"
    number: 31
    shoe: 15
    points: 19
    rebounds: 2
    assists: 2
    steals: 4
    blocks: 11
    slam_dunks: 1
    }
    ]
      }
          away: {
            team_name: "Charoltte Hornets"
            colors: ["Turqoise", "Purple"]
            players: [{
              name: "Jeff Adrien"
              number: 4
              shoe: 18
              points: 10
              rebounds: 1
              assists: 1
              steals: 2
              blocks:  7
              slam_dunks: 2
            }
              {
                name: "Bismack Biyombo"
                number: 0
                shoe: 16
                points: 12
                rebounds: 4
                assists: 7
                steals: 22
                blocks: 15
                slam_dunks: 10
              }
              {
                name: "DeSagna Diop"
                number: 2
                shoe: 14
                points: 24
                rebounds: 12
                assists: 12
                steals: 4
                blocks: 5
                slam_dunks: 5
              }
              {
                name: "Ben Gordon"
                number: 8
                shoe: 15
                points: 33
                rebounds: 3
                assists: 2
                steals: 1
                blocks: 1
                slam_dunks: 0
              }
              {
                name: "Kemba Walker"
                number: 33
                shoe: 15
                points: 6
                rebounds: 12
                assists: 12
                steals: 7
                blocks: 5
                slam_dunks: 12
              }
            ]
          }
        }
        game
      end

  def num_points_scored(players_name)
    game_hash[away][players].each do |hash|
      hash.each do |info, stats|
      if stats == players_name
        return game_hash[away][players][hash][points]
      end
    end
  end
    game_hash[home][players].each do |hash|
      hash.each do |info, stats|
      if stats == players_name
        return game_hash[home][players][hash][points]
      end
    end
  end
  end

  def shoe_size(players_name)
    game_hash[away][players].each do |hash|
      hash.each do |info, stats|
      if stats == players_name
        return game_hash[away][players][hash][shoe]
      end
    end
  end
    game_hash[home][players].each do |hash|
      hash.each do |info, stats|
      if stats == players_name
        return game_hash[home][players][hash][shoe]
      end
    end
  end

  def team_colors(name)
    if game_hash[home][team_name] == name
      return game_hash[home][colors]
    else
      return game_hash[away][colors]
    end
  end

  def team_names
    team_names = []
    team_names << game_hash[home][team_name]
    team_names << game_hash[away][team_name]
    team_names
  end

def player_numbers(teams_name)
  numbers = []
  if game_hash[away][team_name] == teams_name
    game_hash[away][players].each do |hash|
      hash.each do |info, stats|
        if info == number
          numbers << stats
        end
      end
    end
  else
    game_hash[home][players].each do |hash|
      hash.each do |info, stats|
        if info == number
          numbers << stats
        end
      end
    end
  end
  numbers
end

def player_stats(player_name)
  game_hash[home][players].each do |hash|
    if hash[name] == player_name
      return hash
    end
  end
  game_hash[away][players].each do |hash|
    if hash[name] == player_name
      return hash
    end
  end
end

def big_shoe_rebounds


end

def big_shoe_person
  largest = 0
  game_hash.each_key do |home_away|
    game_hash[home_away][players].each do |hash|
      if hash[shoe] > largest
        largest = hash[shoe]
      end
    end
  end
  game_hash.each_key do |home_away|
    game_hash[home_away][players].each do |hash|
      if hash[shoe] == largest
        return hash[rebounds]
      end
    end
end
