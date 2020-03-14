class Mission

    attr_accessor :astronaut, :shuttle
    attr_reader :launch_date

    @@all = []

    def initialize(launch_date, astronaut, shuttle)
        @launch_date = launch_date
        @astronaut = astronaut
        @shuttle = shuttle
        Mission.all << self
    end

    def self.all
        @@all
    end

end
