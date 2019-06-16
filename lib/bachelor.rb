def get_first_name_of_season_winner(data, season)
  # code here
  winner = data[season].find{|contestant| contestant["status"] ==  "Winner"}
  winner["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, list|
  	list.each do |contestant|
  		if contestant["occupation"] == occupation
  			name = contestant["name"]
  			break
  		end
  	end
  	if name != ""
  		break
  	end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
	num_con = 0
  # code here
  data.each do |season, list|
  	list.each do |contestant|
  		if contestant["hometown"] == hometown
  			num_con += 1
  		end
  	end
  end
  num_con
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, list|
  	list.each do |contestant|
  		if contestant["hometown"] == hometown
  			occupation = contestant["occupation"]
  			break
  		end
  	end
  	if occupation != ""
  		break
  	end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  num_ages = 0
  data[season].each do |contestant|
  	total_age += contestant["age"].to_i
  	num_ages += 1.0
  end

  (total_age / num_ages).round
end
