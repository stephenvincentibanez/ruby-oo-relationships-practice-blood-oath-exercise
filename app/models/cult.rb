class Cult
 
    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.select { |cult| cult.name == name }
    end

    def self.find_by_location(location)
        self.all.select { |cult| cult.location == location }
    end

    def self.find_by_founding_year(founding_year)
        self.all.select { |cult| cult.founding_year == founding_year}
    end

    @@all = []

    attr_accessor :name, :location, :founding_year, :slogan

    def initialize(name, location, founding_year, slogan)
        @name, @location, @founding_year, @slogan = name, location, founding_year, slogan
        @@all << self
    end 
    
    def recruit_follower(follower)
        BloodOath.new(self, follower)
    end 

    def followers
        BloodOath.all.select { |bo| bo.cult == self }
    end

    def cult_population
        followers.count
    end


end