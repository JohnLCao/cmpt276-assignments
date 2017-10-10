# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
Course.destroy_all
# Enroll.delete_all #--shouldn't need this

Student.create!([
	{student_id: 1, name: "Jon Snow", email: "know@nothing"}, 
	{student_id: 2, name: "Daenerys", email: "dr@carys"},
	{student_id: 3, name: "Tyrion", email: "half@man"},
	{student_id: 4, name: "Jaime", email: "king@slayer"},
	{student_id: 5, name: "Sansa", email: "dark@sansa"},
	{student_id: 6, name: "Arya", email: "faceless@men"},
	{student_id: 7, name: "Beric", email: "imiss@thoros"}
])

Course.create!([
	{id: 1, course: "GoT 100", description: "how to ride dragons"},
	{id: 2, course: "GoT 105", description: "how to fight white walkers"},
	{id: 3, course: "GoT 200", description: "how to comeback from dead"},
	{id: 4, course: "GoT 490", description: "how to win iron throne"}
])

#start everyone with Fs and then calculate dynamically
Enroll.create!([
	{student_id: 1, course_id: 1, percentage: 60, lettergrade: "F"},
	{student_id: 1, course_id: 2, percentage: 99, lettergrade: "F"},
	{student_id: 1, course_id: 3, percentage: 85, lettergrade: "F"},
	{student_id: 1, course_id: 4, percentage: 50, lettergrade: "F"},
	{student_id: 2, course_id: 1, percentage: 100, lettergrade:"F"},
	{student_id: 2, course_id: 2, percentage: 90, lettergrade: "F"},
	{student_id: 2, course_id: 4, percentage: 70, lettergrade: "F"},
	{student_id: 3, course_id: 1, percentage: 50, lettergrade: "F"},
	{student_id: 3, course_id: 2, percentage: 55, lettergrade: "F"},
	{student_id: 3, course_id: 4, percentage: 85, lettergrade: "F"},
	{student_id: 4, course_id: 2, percentage: 80, lettergrade: "F"},
	{student_id: 4, course_id: 4, percentage: 70, lettergrade: "F"},
	{student_id: 5, course_id: 2, percentage: 60, lettergrade: "F"},
	{student_id: 5, course_id: 4, percentage: 75, lettergrade: "F"},
	{student_id: 6, course_id: 2, percentage: 70, lettergrade: "F"},
	{student_id: 6, course_id: 3, percentage: 50, lettergrade: "F"},
	{student_id: 6, course_id: 4, percentage: 65, lettergrade: "F"},
	{student_id: 7, course_id: 2, percentage: 85, lettergrade: "F"},
	{student_id: 7, course_id: 3, percentage: 99, lettergrade: "F"}
])



	

