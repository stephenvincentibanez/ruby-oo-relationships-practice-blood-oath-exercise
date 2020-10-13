class BloodOath

    def self.all
        @@all
    end

    @@all = []

    attr_accessor :cult, :follower, :initiation_date

    def initialize (cult, follower, initiation_date)
        @cult, @follower, @initiation_date = cult, follower, initiation_date
        @@all << self
    end

    def initiation_date
        self.initiation_date
    end

end