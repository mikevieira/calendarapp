module TasksHelper

def shortday(date)
  day = date.to_s[-2,2]
  return day
end 


def timechop(time)
 timeshow = time.to_s[11,5]
 return timeshow
end

def idcreate(date)
  id = date.to_s.tr('-','')
  return id
 end 


def get_month_name(id)
 case id
    when 1 then name = "January"
    when 2 then name = "February"
    when 3 then name = "March"
    when 4 then name = "April"
    when 5 then name = "May"
    when 6 then name = "June"
    when 7 then name = "July"  
    when 8 then name = "August"
    when 9 then name = "September"
    when 10 then name = "October"
    when 11 then name = "November"
    when 12 then name = "December"
  end
  return name
end

def datedisplay(num)
 
  def  get_month_name(month)
 case month
    when 1 then name = "January"
    when 2 then name = "February"
    when 3 then name = "March"
    when 4 then name = "April"
    when 5 then name = "May"
    when 6 then name = "June"
    when 7 then name = "July"  
    when 8 then name = "August"
    when 9 then name = "September"
    when 10 then name = "October"
    when 11 then name = "November"
    when 12 then name = "December"
   end
    return name   
  end 
  
   def ordinalnum(num)
  numtotens = num.to_i % 10
  numtohundreds = num.to_i % 100
  if numtohundreds ==11 
    return "#{num}th" 
  elsif numtohundreds == 12
    return  "#{num}th" 
  elsif numtohundreds ==13 
    return  "#{num}th" 
  elsif numtotens == 1
    return  "#{num}st"
  elsif numtotens == 2
    return "#(num)nd"
  elsif numtotens == 3
    return "#{num}rd"
  elsif numtotens >= 4
    return "#{num}th"
  else numtotens == 0
     return "#{num}th"
  end 
end
 
      
  datearray = []
  datearray = num.to_s.split('-')
  year = datearray[0]
  month = datearray[1].tr('0','').to_i
  day = datearray[2]
 
  monthword = get_month_name(month)
  dayword = ordinalnum(day)    
 return "Tasks for #{monthword} #{dayword}, #{year}"
end

end
