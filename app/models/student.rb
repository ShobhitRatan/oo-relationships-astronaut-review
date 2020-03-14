class Student 
    attr_reader :name, :age, :year 
    @@all = []

    def initialize(name, age, year) 
        @name = name 
        @age = age 
        @year = year 
        Student.all << self 
    end 
end 