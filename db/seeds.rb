# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Очищаем таблицы перед новой загрузкой, чтобы данные не дублировались
Company.delete_all
#Company.reset_pk_sequence 
Company.create([
  { name: 'X5 Tech', location: 'Moscow' },
  { name: 'CODDY', location: 'Moscow' },
  { name: 'Yandex Cloud', location: 'Moscow' },
  { name: 'Timeweb Cloud', location: 'Saint-Petersburg' },
  { name: 'NeuroCore', location: 'Tyumen' },
  { name: 'Ural Dev', location: 'Perm' },
  { name: 'Perekrestok IT', location: 'Saint-Petersburg' }
])

Job.delete_all
#Job.reset_pk_sequence
Job.create([
  { name: 'Knowledge Modeler', place: 'Hybrid', company_id: 1 },
  { name: 'Data Management Specialist', place: 'Office', company_id: 1 },
  { name: 'Programming Instructor', place: 'Office', company_id: 2 },
  { name: 'Cloud Infrastructure Engineer (Terraform)', place: 'Remote', company_id: 3 },
  { name: 'DataLens Analyst', place: 'Remote', company_id: 3 },
  { name: 'Virtual Server Administrator', place: 'Office', company_id: 4 },
  { name: 'Neural Networks Engineer', place: 'Remote', company_id: 5 },
  { name: 'Python Developer', place: 'Office', company_id: 6 },
  { name: 'Ruby on Rails Backend', place: 'Remote', company_id: 6 },
  { name: 'E-commerce Backend Developer', place: 'Hybrid', company_id: 7 },
  { name: 'Fullstack Developer', place: 'Remote', company_id: 7 }
])

Geek.delete_all
#Geek.reset_pk_sequence
Geek.create([
  { name: "Alexandr", stack: "Python, Data Management, Knowledge Modeling", resume: "Master's degree in Intelligent Technologies, Experience as Knowledge Modeler" },
  { name: "Oleg", stack: "Neuro-technologies, PyTorch, AI", resume: "Completed professional retraining in neural networks" },
  { name: "Anna", stack: "Ruby on Rails, PostgreSQL", resume: "Backend dev, 3 years experience" },
  { name: "Sergey", stack: "React, JS, Web Design", resume: "Frontend dev, former design instructor" },
  { name: "Elena", stack: "Data Science, SQL, DataLens", resume: "Data analyst with cloud experience" },
  { name: "Dmitry", stack: "Terraform, Cloud DevOps", resume: "Infrastructure as Code specialist" },
  { name: "Ivan", stack: "Python, Django REST, API", resume: "Backend developer transitioning to Rails" },
  { name: "Maria", stack: "Teaching, Python, Scratch", resume: "IT instructor for kids and teens" },
  { name: "Pavel", stack: "System Administration, Linux", resume: "Virtual server hosting support" },
  { name: "Ksenia", stack: "Full Stack, Node.js, React", resume: "Web application developer" }
])

Apply.delete_all
#Apply.reset_pk_sequence
Apply.create([
  { job_id: 1, geek_id: 1, read: true, invited: true },
  { job_id: 2, geek_id: 1, read: true, invited: false },
  { job_id: 3, geek_id: 8, read: true, invited: true },
  { job_id: 4, geek_id: 6, read: false, invited: false },
  { job_id: 5, geek_id: 5, read: true, invited: true },
  { job_id: 6, geek_id: 9, read: true, invited: false },
  { job_id: 7, geek_id: 2, read: false, invited: false },
  { job_id: 8, geek_id: 7, read: true, invited: true },
  { job_id: 9, geek_id: 3, read: true, invited: true },
  { job_id: 10, geek_id: 7, read: false, invited: false },
  { job_id: 11, geek_id: 10, read: true, invited: false },
  { job_id: 3, geek_id: 4, read: true, invited: false },
  { job_id: 7, geek_id: 1, read: false, invited: false },
  { job_id: 9, geek_id: 7, read: true, invited: false }
])
