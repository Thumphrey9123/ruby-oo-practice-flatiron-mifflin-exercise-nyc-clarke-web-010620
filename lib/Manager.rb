class Manager

    attr_accessor :department, :employees
    attr_reader :name, :age
    @@all = []
    def initialize(name, department, age, employees = [])
        @age = age
        @department = department
        @name = name
        @employees = employees
        @@all << self
    end

    def self.all
        @@all
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary, self)
        self.employees << new_employee
        new_employee
    end

    def self.all_departments
        departments = self.all.map{|manager| manager.department}
        departments.uniq 
    end

    def self.average_age
        sum = 0
        age_sum = self.all.map{|manager|  sum += manager.age}
        sum/self.all.length
    end

end
