
class School

    attr_reader :roster

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end
    
    def add_student(name, grade)
        @roster[grade] = [] if @roster[grade] == nil
        @roster[grade] << name
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end

end

