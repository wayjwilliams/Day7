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
