require 'pry'
class Follower

    def self.all 
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select { |f| f.age >= age }
    end

    @@all = []

    attr_accessor :name, :age, :life_motto

    def initialize (name)
        @name, @age, @life_motto = name, age, life_motto
        @@all << self
    end

    def cults
        cult = BloodOath.all.select { |bo| bo.follower == self }
        cult.map { |bo| bo.cult }
    end

    def join_cult(cult)
        BloodOath.new(cult, self, initiation_date)
    end

end