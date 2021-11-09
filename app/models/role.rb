class Role < ActiveRecord::Base
  has_many :auditions

def actors
 actorlist= self.auditions.map do |audition|
    audition.actor
end
actorlist
end

def locations
    locationlist= self.auditions.map do |audition|
       audition.location
   end
   locationlist
end

def lead
    lead= self.auditions.find do |audition|
        audition.hired ==true
    end

 if  lead == nil
    'no actor has been hired for this role'
 else
    lead
 end

end   

def understudy 
    understudy= self.auditions.filter do |audition|
        audition.hired ==true
    end
#  remeber to add[1] for final 
    if understudy[1] == nil
        'no actor has been hired for understudy for this role'
    else
        understudy[1]
    end
  
end



end





# THINGS TO CHECK 
# ROLE LEAD DOESN"T update after callback is run 
# AUDITION SHOULD HAVE BELONGS_TO ---- THIS SHOULDNT MATTER BUT BEST TO DO AS CLOSELY AS POSSIBNLE 
# 
# 
# 