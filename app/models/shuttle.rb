
class Shuttle
    attr_reader :model, :capacity 
    @@all = []

    def initialize(model, capacity)
        @model = model 
        @capacity = capacity 
        Shuttle.all << self 
    end 
    def self.all 
        @@all 
    end 
    def missions 
        Mission.all.select do |mission| 
            mission.shuttle == self 
        end 
    end 
    def add_astronaut(astronaut, launch_date)
        if self.missions.length < self.capacity 
            Mission.new(launch_date, astronaut, self) 
        else 
            puts "Sorry this mission is already full!" 
        end 
    end 
    def self.find_by_model(model)
        Shuttle.all.find do |space_ship| 
            space_ship.model == self 
        end 
    end 
    def current_astronauts
        missions.map do |astronaut| 
            mission.astronaut 
        end 
    end 
end
