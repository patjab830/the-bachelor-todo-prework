def get_first_name_of_season_winner(data, season)
  data.each do |season_num, season_data_arr|
    if season == season_num
      season_data_arr.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
  return nil
end

def get_contestant_name(data, occupation)
  data.each do |season_num, season_data_arr|
    season_data_arr.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_num, season_data_arr|
    season_data_arr.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_num, season_data_arr|
    season_data_arr.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  counter = 0
  total = 0.0
  data.each do |season_num, season_data_arr|
    if season_num == season
      season_data_arr.each do |contestant|
        total += contestant["age"].to_f
        counter += 1
      end
    end
  end
  (total/counter).round
end
