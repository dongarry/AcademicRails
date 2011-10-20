class LastPageController < ApplicationController
  layout "Main"
  
  def show
    @usr = User.find(:last)
    @message = @usr.name + ", you selected the following : " + @usr.film_selected
    
    if @usr.personality ==0
          @results = "You nut! you made a mistake entering the details! "
    elsif @usr.personality >0 and @usr.personality<5 then
          @results = "You are a softy with a head full of teddy bears and daisies. Save yourself and join the Army."
    elsif @usr.personality >4 and @usr.personality<9 then
          @results = "You have experienced life but with a hurling helmet on.Embrace living before its too late"
    elsif @usr.personality >8 and @usr.personality<11 then
          @results = "You are cruising along quite nicely. The chances of you ever killing anybody are slim"
    elsif @usr.personality >10 and @usr.personality<13 then
          @results = "You have a dark side, possibly caused by a childhood trauma. Work it out through punching a dolphin"
    elsif @usr.personality >12 and @usr.personality<17 then
          @results = "You are psychotic. Talk to the Gardai and a doctor. In that order."
    else
        @results = "You've entered in nonsense. Please try again."
    end
  end
end