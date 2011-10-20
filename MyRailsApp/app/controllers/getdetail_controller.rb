class GetdetailController < ApplicationController
  layout "Main"
  
  def question
    @message = "Please enter details below and select your fav film from each list"
    
    # start..
    @fname=params[:usr_name]
    if @fname.nil?
       # @fname = "Why did you not enter a name?"
    else
      @usr = User.create([:name => @fname,:personality=>@pers_total])
      @myfilms = Film.find(:all, :conditions =>{:group=>1})
    end
    
    #question 1
    @film1 = params[:film_1]
    if @film1.nil?
      #@error = "Something bad happened!"
    else           
             upd_user(@film1)              
              @myfilms = Film.find(:all, :conditions =>{:group=>2})     
    end
    
    #question 2
    @film2 = params[:film_2]
    if @film2.nil? 
      #@error = "Something bad happened!"
    else  
             upd_user(@film2)              
             @myfilms = Film.find(:all, :conditions =>{:group=>3})     
    end
    
    #question 3
    @film3 = params[:film_3]
    if @film3.nil?
      #@error = "Something bad happened!"
    else  
             upd_user(@film3)                   
             @myfilms = Film.find(:all, :conditions =>{:group=>4})     
    end
    
    #question 4
    @film4 = params[:film_4]
    if @film4.nil?
      #@error = "Something bad happened!"
    else  
          upd_user(@film4)                           
          @myfilms=Film.find(:all, :conditions =>{:film_id=>@film4})
    end
  end
end

def upd_user(f_id)
    @usr = User.find(:last)
    @usrfilm =Film.find(:all, :conditions =>{:film_id=>f_id})     
    @usrfilm.each do |f|
      @usr.personality = @usr.personality.to_i  + f.personalitycount.to_i
      @usr.film_selected = @usr.film_selected.to_s + ", " + f.film_name
      @usr.save
    end
end

