require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each  {|holiday, supply_list| supply_list << supply}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter_holiday_supplies = []
  holiday_hash[:winter].each do |holiday, supply_list|
    supply_list.each {|supply| all_winter_holiday_supplies << supply}
  end
  all_winter_holiday_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_holiday_list|
    season_string = season.to_s.capitalize! << ":"
    puts season_string
    season_holiday_list.each do |holiday, holiday_supplies|
      # split the new symbol into
      holiday_array = holiday.to_s.split("_")
      binding.pry
      holiday_string = "  " << holiday.to_s.capitalize << ": "
      holiday_supplies.each do |supply|
        list_item = supply.capitalize << ", "
        holiday_string << list_item
      end
      # remove space and comma for the last item
      holiday_string.delete_suffix!(', ')

      # return the string of supplies for this holiday
      puts holiday_string
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season, season_holiday_list|
    season.each do |holiday, holiday_supplies|

    end
  end
end
