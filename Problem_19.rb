def leap_year?(year)
  if (year % 4 == 0 && year % 100 != 0)
    return true
  elsif (year % 100 == 0 && year % 400 == 0 )
    return true
  else
    return false
  end
end
def no_of_Sundays
  days = ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday" ]
  month_hash = {"Jan"=>"31","Feb"=>"28","Mar"=>"31","Apr"=>"30","May"=>"31",
                "Jun"=>"30","Jul"=>"31","Aug"=>"31","Sep"=>"30","Oct"=>"31",
                "Nov"=>"30","Dec"=>"31"}
  date = ""
  day = ""
  sunday_count = 0
  i = 0
   (1900 .. 2000). each do |year|
    (leap_year?(year)) ? month_hash["Feb"] = "29" : month_hash["Feb"] = "28"
         month_hash.each do |month , day_count|
          day_count.to_i.times do |count|
             date = "#{count+1}:#{month}:#{year}"
             # iterating the days through every seven numbers
             if (i > 6)
              day = days[i%7]
             else
              day = days [i]
             end
             i += 1
             # counting the sundays
             if (count == 0 && year > 1900 && day == "Sunday")
                sunday_count += 1
            end
          end
         end
       end
       sunday_count
end
print no_of_Sundays
