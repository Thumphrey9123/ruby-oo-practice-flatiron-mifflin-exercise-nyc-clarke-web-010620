require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'



m1 = Manager.new("mike", "sales", 29)

m2 = Manager.new("gary", "hr", 13)
m3 = Manager.new("lary", "project1", 45)
m4 = Manager.new("jerry", "project1", 55)
m5 = Manager.new("harry", "financial", 65)
m6 = Manager.new("scary", "clothing", 64)

e1 = m1.hire_employee("bob", 36000)
e2 = m2.hire_employee("bobby", 25000)
e3 = m1.hire_employee("billy", 85000)
e4 = m2.hire_employee("william", 65000)
e5 = m3.hire_employee("bill", 55000)
e6 = m4.hire_employee("gerald", 65000)
e7 = m5.hire_employee("jane", 75000)
e8 = m6.hire_employee("sam", 85000)
e9 = m5.hire_employee("sarah", 125000)
e10 = m6.hire_employee("billybob", 135000)
e11 = m4.hire_employee("alissa", 25000)


binding.pry
puts "done"
