# Write your code here!
require "pry"
def game_hash
  {
    :home =>{
    :team_name=>'Brooklyn Nets',
    :colors=>['Black', 'White'],
    :players=> {
    "Alan Anderson"=>{
      :number=>0,
      :shoe=>16,
      :points=> 22,
      :rebounds=> 12,
      :assists=> 12,
     :steals=>3,
     :blocks=>1,
     :slam_dunks=>1
   },
     "Reggie Evans"=> {
       :number=>30,
       :shoe=>14,
       :points=> 12,
       :rebounds=> 12,
       :assists=> 12,
        :steals=>12,
        :blocks=>12,
        :slam_dunks=>7
     },
     "Brook Lopez"=>{
       :number=>11,
       :shoe=>17,
       :points=> 17,
       :rebounds=> 19,
       :assists=> 10,
        :steals=>3,
        :blocks=>1,
        :slam_dunks=>15

     },
     "Mason Plumlee"=>{
       :number=>1,
       :shoe=>19,
       :points=> 26,
       :rebounds=> 12,
       :assists=> 6,
        :steals=>3,
        :blocks=>8,
        :slam_dunks=>5
     },
     "Jason Terry"=>{
       :number=>31,
       :shoe=>15,
       :points=> 19,
       :rebounds=> 2,
       :assists=> 2,
        :steals=>4,
        :blocks=>11,
        :slam_dunks=>1
     }#last player
   }#players
 },#home
    :away => {
      :team_name=>"Charlotte Hornets",
      :colors=>["Turquoise", "Purple"],
      :players=>{
        "Jeff Adrien"=>{
          :number=>4,
          :shoe=>18,
          :points=> 10,
          :rebounds=> 1,
          :assists=> 1,
           :steals=>2,
           :blocks=>7,
           :slam_dunks=>2
        },
        "Bismak Biyombo"=>{
          :number=>0,
          :shoe=>16,
          :points=> 12,
          :rebounds=> 4,
          :assists=> 7,
           :steals=>7,
           :blocks=>15,
           :slam_dunks=>10
        },
        "DeSagna Diop"=>{
          :number=>2,
          :shoe=>14,
          :points=> 24,
          :rebounds=> 12,
          :assists=> 12,
           :steals=>4,
           :blocks=>5,
           :slam_dunks=>5
        },
        "Ben Gordon"=>{
          :number=>8,
          :shoe=>15,
          :points=> 33,
          :rebounds=> 3,
          :assists=> 2,
           :steals=>1,
           :blocks=>1,
           :slam_dunks=>0
        },
        "Brendan Haywood"=>{
          :number=>33,
          :shoe=>15,
          :points=> 6,
          :rebounds=> 12,
          :assists=> 12,
           :steals=>22,
           :blocks=>5,
           :slam_dunks=>12
        }#last player
      }#players
    }#away
  }
end

def num_points_scored(player_name)
points=nil
  game_hash.each do |location, team_data|
    team_data[:players].each do |player, info|
      if player==player_name
        points=info[:points]
      end
    end
    # if team_data[:players].keys.include?(player_name)
    #  points=team_data[:players][player_name][:points]
    # end
  end
points
end

def shoe_size(player_name)
  shoe=nil
  game_hash.each do |location, team_data|
    if team_data[:players].keys.include?(player_name)
      shoe=team_data[:players][player_name][:shoe]
    end
  end
  shoe
end

def team_colors(team_name)
  game_hash.each do |location, team_data|

    if team_data[:team_name]==team_name
      return team_data[:colors]
    end
  end
end

def team_names
  names=[]
  game_hash.each do |location, data|
    names.push(data[:team_name])

  end
  names
end

def player_numbers(team)
  jerseys=[]
  game_hash.each do |location, data|
    if data[:team_name]==team
      data[:players].each do |player, info|
        jerseys.push(info[:number])
      end
    end
  end
  jerseys
end

def player_stats(player_name)
  game_hash.each do |location, data|
    data[:players].each do |player, info|
      if player==player_name
        return info
      end
    end
  end
end

def big_shoe_rebounds
  biggest_shoe=0
  rebounds=nil
  game_hash.each do |location, data|
    data[:players].each do |player, info|
      if info[:shoe]>biggest_shoe
        rebounds=info[:rebounds]
      end
    end
  end
  rebounds
end
