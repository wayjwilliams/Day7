class Log
  @@Log = []
    def self.log_event(event)
      @@Log << event
    end

    def self.all_events
      @@Log
    end
  end

class Animals < Log
  def eat
    puts "#{@animal} ate fish!"
    Log.log_event "#{@animal} ate fish!"
  end

end

class Shark < Animals
   initialize(shark)
   @animal = shark
end

class Panda < Animals
   initialize(panda)
   @animal = shark
end


panda = Panda.new
panda.eat

shark = Shark.new
shark.eat

Log.log_event "#{@animal} ate fish!"
Log.all_events

#########


# Benjamin's code to review
# class Log
#   @@log_array = []
#   def self.log
#     p @@log_array
#   end
#   def self.add_to_log(eater)
#     @@log_array << "#{eater} ate"
#   end
# end
#
# class FishEaters
#   def initialize
#     @name = "fish eater"
#   end
#   def eat
#     puts "#{@name} is eating.  This has been logged."
#     Log.add_to_log(@name)
#   end
#   def show
#     p "#{@name} is an animal that eats fish"
#   end
# end
#
# class Panda < FishEaters
#   def initialize
#     @name = "panda"
#   end
# end
#
# class Shark < FishEaters
#   def initialize
#     @name = "shark"
#   end
# end
#
# panda = Panda.new
# shark = Shark.new
# panda.show
# shark.show
# panda.eat
# panda.eat
# shark.eat
# Log.log


# Jordan's code for review:
# class Log                                             #creating a class for the Log.
#   @@log_array = []                                    #creating an empty array(class variable) for the class to dump its information.
#   def self.log                                        #creating the first method for the Log class
#     p @@log_array                                     #print the array the log information in dumped into
#   end                                                 #closing the first method of the class
#   def self.add_to_log(eater)                          #creating the second method for the Log class with a parameter of eater
#     @@log_array << "#{eater} ate"                     #dumping information into the array while interpolating eater
#   end                                                 #closing the second method of the class
# end                                                   #closing the Log class
#
# class FishEaters                                      #creating a superclass
#   def initialize                                      #creating the first method of the superclass
#     @name = "fish eater"                              #fish eater is assigned to @name per instance
#   end                                                 #closing first method of superclass
#   def eat                                             #creating second method of the superclass
#     puts "#{@name} is eating. This has been logged."  #prints sting with the name inserted. the name is being altered in the subclass.
#     Log.add_to_log(@name)                             #add this to the log the name is also derived form the instance
#   end                                                 #closing second method of superclass
#   def show                                            #crating thrid method fo the superclass
#     p "#{@name} is an animal that eats fish"          #printing string with interpolated names from the instance
#   end                                                 #closing out third method of superclass
# end                                                   #closing out the superclass
#
# class Panda < FishEaters                              #creating a class that inherites the superclass
#   def initialize                                      #altering one of the methods in the superclass
#     @name = "panda"                                   #new value of the superclass method for this class
#   end                                                 #closing out method
# end                                                   #closing out class
#
# class Shark < FishEaters                              #creating a class that inherites the superclass
#   def initialize                                      #altering one of the methods in the superclass
#     @name = "shark"                                   #new value of the superclass method for this class
#   end                                                 #closing out method
# end                                                   #closing out class
#
# panda = Panda.new                                     #instanciating the "class Panda" with the variable panda
# shark = Shark.new                                     #instanciating the "class Shark" with the variable shark
# panda.show                                            #sending a message Panda > FishEaters prints show method
# shark.show                                            #sending a message Shark > FishEaters prints show method
# panda.eat                                             #sending a message Panda > FishEaters prints eat method
# panda.eat                                             #sending a message Panda > FishEaters prints eat method
# shark.eat                                             #sending a message Shark > FishEaters prints eat method
# Log.log                                               #sending a message Log > log method

# @@ class variable

# @ instance variable

# Interpolates: insert (something) between fixed points.
# Paramater:
# Instanciate:
