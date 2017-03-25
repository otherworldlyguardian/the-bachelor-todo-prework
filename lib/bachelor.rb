require "pry"

def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |info|
    if info["status"] == "Winner"
      winner = info["name"].split(" ")[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  contestant = nil
  data.each do |season_num, season_info|
    season_info.each do |info|
      if info["occupation"] == occupation
        contestant = info["name"]
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, season_info|
    season_info.each do |info|
      if info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = nil
  data.each do |season_num, season_info|
    season_info.each do |info|
      if occupation == nil && info["hometown"] == hometown
        occupation = info["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  avg_count = 0
  sum = 0
  data[season].each do |info|
    sum += info["age"].to_f
    avg_count += 1
  end
  (sum / avg_count).round
end
