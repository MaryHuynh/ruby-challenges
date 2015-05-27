class Profession
	def set_person_name=(person_name)
		@person_name=person_name
	end
	
	def get_person_name=(person_name)
		return @person_name
	end
	
	def set_profession_name=(profession_name)
		@profession_name=profession_name
	end
	
	def get_profession_name
		return @profession_name
	end
	
	def set_salary=(salary)
		@salary=salary
	end
	
	def	get_salary
		return @salary
	end
	
	def set_main_function=(function)
		@function=function
	end
	
	def get_main_function
		return @function
	end
	
	def about_profession
		puts "#{@person_name} is a #{@profession_name} who earns #{@salary}. His/her job's main function is #{@function}."
	end
	
end

class Doctor < Profession
	def does_surgery
		puts "#{@person_name} cuts the patient open with a scalpel."
	end
	
	def prescripes_meds
		puts "#{@person_name} writes a prescription."
	end
end

class Lawyer < Profession
	def sues
		puts "#{@person_name} says, 'We will see you in court!'"
	end
	
	def writes_will
		puts "#{@person_name} writes a will."
	end
end

class Teacher < Profession
	def curriculum
		puts "#{@person_name} writes curriculum."
	end
	
	def meetings
		puts "#{@person_name} goes to parent/teacher conferences."
	end
end

#calling the classes
my_doctor = Doctor.new
my_doctor.set_person_name="Steve"
my_doctor.set_profession_name="doctor"
my_doctor.set_salary="$100,000"
my_doctor.set_main_function="patient care"
my_doctor.about_profession
my_doctor.does_surgery
my_doctor.prescripes_meds

my_lawyer = Lawyer.new
my_lawyer.set_person_name="Maria"
my_lawyer.set_profession_name="lawyer"
my_lawyer.set_salary="$100,000"
my_lawyer.set_main_function="legal aid"
my_lawyer.about_profession
my_lawyer.sues
my_lawyer.writes_will

my_teacher = Teacher.new
my_teacher.set_person_name="Fred"
my_teacher.set_profession_name="teacher"
my_teacher.set_salary="$50,000"
my_teacher.set_main_function="teaching the future"
my_teacher.about_profession
my_teacher.curriculum
my_teacher.meetings