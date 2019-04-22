require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
     if season == :winter
       holiday.each do |holiday_name, supplies|
         supplies.push("Balloons")
   end
  end
 end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday_name, current_supply|
        current_supply.push(supply)
      end
    end
  end
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
winter_supply_storage = []

  holiday_hash.each do |season, holiday|
     if season == :winter

      holiday.each do |holiday_name, supplies|

      winter_supply_storage.push(supplies)
      winter_supply_storage = winter_supply_storage.flatten
     end
   end
 end
 winter_supply_storage
end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
      holiday.each do |holiday_name, supplies|
        formatted_holiday_name = holiday_name.to_s.split("_")
        final_formatted_holiday_name = formatted_holiday_name.collect do |x|
          x.to_s.capitalize
        end
        holiday_name_corrected = final_formatted_holiday_name.join(" ")
        puts "  #{holiday_name_corrected}: #{supplies.join(", ")}"
      end
    end
end

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

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

holidays_with_bbq_array = []



  holiday_hash.each do |season, holiday|


    holiday.each do |name, supplies|

      if supplies.include?("BBQ") == true
        holidays_with_bbq_array.push(name)
      end

    end


  end

holidays_with_bbq_array


end
