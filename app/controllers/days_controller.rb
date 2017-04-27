class DaysController < ApplicationController

  def show
    @day = Day.new day  
  end
  
private 
 def day 
  Date.parse(params[:id].to_s)
 end 


end
