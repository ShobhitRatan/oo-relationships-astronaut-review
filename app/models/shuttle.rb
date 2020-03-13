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
    
end
