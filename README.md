# MPCS 52553 - Final Project Mile Stone #2
Author: Anqi Wu
CNetID: haoqiw

# Note #

# Assumptions: the user input the data in the expected format and fill all the entries while filling out the form
# If you would like to re-migrate the database, please first sign out, re-migrate the database, and then restart the server

# MyDoctor Web Application #
* Patients can see a list of doctors 
* Patients can see a list of doctors by practice and by speciality
* Dentists have appointment availabilities from Monday to Friday 9:00am - 5:00pm
* Patient can make appointment with the doctor for the time slot that is given in the time slot table
* Patients must sign in to view doctor details, make an appointment, and view their profile
* Patients can make an appointment with a doctor for a given date and time
* Patients can see their upcoming appointments
* Patients can cancel upcoming appointments
* Patients click on complete to complete their appointments in order to earn points
* Patients can write, view and edit reviews for the past appointments
* Patients earn 10 points for completing each appointment, and an extra 10 points for reviewed appointments
* Patients view their profile to change their email address, password, view points.
* Patients can choose to display their passwords as they enter
* Administrtors can book and cancel all the appointments
* Administrators can view all the appointments across all the doctors
* Administrators can add, edit, and delete the timeslots of any given doctor and view any filled time slots
* Administrators can add, edit, and delete doctors
* Administrators can view interesting health care statistics, such as total number of Patients, patient profiles and earned points, number of appointments, availability statistics and so on.

Feautres Elective
* Google Charts for the statistics page: pie chart for Doctors by Specialty, Doctors by Practice, bar chart for Doctors by Filled and Unfilled Timeslots and , column chart for appoinment by date

<hr>
# How to Run #

1. Download the ZIP of this repository and cd to the root directory
2. 'bundle install'
3. 'rails db:migrate'
4. 'rails db:seed'
5. Administrator: Admin@gmail.com Pass: admin
6. User: victoria27wu@gmail.com pass: test
	pp@gmail.com pass: yes
7. For adding new imge of the doctor: http://www.disneyimage.com/_/rsrc/1407522016672/Funny-Doctor-Cartoons/Funny-Doctor-Cartoon-Image_4.png?height=400&width=400


