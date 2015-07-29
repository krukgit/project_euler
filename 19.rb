year = 1901
month = 1
day = 1

weekday = 2

count = 0

short = [4, 6, 9, 11]
long = [1, 3, 5, 7, 8, 10, 12]

while year < 2001 do
  if weekday == 7
    p "#{day}.#{month}.#{year}"
    weekday = 0
    if day == 1
      count += 1
    end
  end

  leap = (year%4 == 0) && (year%400 != 0)

  day += 1
  weekday += 1

  if day == 29 && month == 2 && !leap
    month += 1
    day = 1
  elsif day == 30 && month == 2 && leap
    month += 1
    day = 1
  elsif day == 31 && short.include?(month)
    month += 1
    day = 1
  elsif day == 32
    month += 1
    day = 1
  end

  if month == 13
    year += 1
    month = 1
  end
end

p count
    
    
