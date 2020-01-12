class Employee

    attr_accessor :manager
    attr_reader :name, :salary
    @@all = []
    def initialize(name, salary, manager)
        @salary = salary
        @name = name
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        self.all.select{|employee| employee.salary > salary}
    end

    def self.find_by_department(department)
        self.all.find {|employee| employee.manager.department == department}
    end

    def tax_bracket
        Employee.all.select {|employee| employee.salary <= (self.salary + 1000) && employee.salary >= (self.salary - 1000)}
    end
end
