class Course 
    attr_reader :course_code, :dept, :course_num, :course_description, :capacity
    @@all = []

    def initialize(course_code, dept, course_num, course_description, capacity) 
        @course_code = course_code 
        @dept = dept 
        @course_num = course_num 
        @course_description = course_description 
        @capacity = capacity 
        Course.all << self 
    end 
    def self.all 
        @@all 
    end 
    def enrollments 
        Enrollment.all.select do |enrollment| 
            enrollment.course == self 
        end 
    end 
    def add_student(student, semester, grade)
        if self.enrollments.length < self.enrollments.capacity 
            Enrollment.new(semester, grade, self, student) 
        else  
            puts "This class is full. Please register for another class." 
        end 
    end 
    
end 
