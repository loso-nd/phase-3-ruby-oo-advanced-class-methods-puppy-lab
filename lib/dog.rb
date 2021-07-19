class Dog
    @@all = []
    @@clear_all = []
    attr_accessor :name

    def initialize(name)
        @name = name
        self.save #@@all << self
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all
        self.all.each do |dog| 
            puts dog.name
        end
    end
end


#   def initialize(name)
#     @name = name
#     self.save
#   end

#   def save
#     @@all << self
#   end

#Line 4: Create a class variable `@@all` set to an empty array inside your class.
    #  This array is the storage container for each instance of a `Dog` that gets created. 
    # In other words, every puppy that is born should get pushed into this array at the moment of instantiation — in the `#initialize` method!

#Line 9: Use the `self` keyword inside the `#initialize` method to refer to the new dog you are trying to store in your `@@all` array.


#Line 12: Write a class method, `.all`, that returns the `@@all` variable.
    #From inside the `Dog` class, we can access the `@@all` class variable, but whenever we might be interacting with our `Dog` class from the outside, this `.all` class method acts as our direct interface to the `@@all` variable.

#Line 21: Write a class method, `.print_all`, that iterates over all of the individual dogs stored in the `@@all` array and `puts` out their name to the terminal.