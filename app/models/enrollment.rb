class Enrollment 
    attr_reader :semester, :grade 
    attr_accessor :student, :course 
    @@all = []

    def initialize(semester, grade, course) 
        @semester = semester 
        @grade = grade 
        @course = course 
        Enrollment.all << self 
    end 
    def self.all 
        @@all 
    end 
end 