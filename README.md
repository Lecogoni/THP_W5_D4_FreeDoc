# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

tp Doctor.all
tp Patient.all

d = Doctor.first
p = Patient.first

a = Appointment.create(doctor: d, patient: p)
=> #<Appointment id: 1, date: nil, doctor_id: 1, patient_id: 1, created_at: "2021-02-04 11:00:35", updated_at: "2021-02-04 11:00:35"> 

d.appointments
=>#<ActiveRecord::Associations::CollectionProxy [#<Appointment id: 1, date: nil, doctor_id: 1, patient_id: 1, created_at: "2021-02-04 11:00:35", updated_at: "2021-02-04 11:00:35">]> 
2.7.2 :015 > 

tp Appointment.all

d = Doctor.find_by(first_name: "Waters")
pa = Patient.find_by(first_name: "Hermann")
Appointment.create(doctor: d, patient: pa)
a = appointment.last
a.doctor
a.doctor.first_name