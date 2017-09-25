# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
specialites = ["Chiropractors","Dentists","Dermatologists",
	"Eye Doctors","Gynecologists","Primary Care Doctors",
	"Psychiatrists"]
Specialty.delete_all
specialites.each do |entry|
	Specialty.create name: entry
end
print "There are now #{Specialty.count} specialites in the database.\n"

practices = [["Chicago Health Medical Group","Chicago, IL 60640"],["Dental Art Clinic", "Mt. Prospect, IL 60056"],
["Millennium Park Dermatology","Chicago, IL 60602"],
["Mercy Hospital--Doctors Office Center","Chicago, IL 60616"],
["Rosin Eyecare","Chicago, IL 60601"],
["Aligned Modern Health","Chicago, IL 60625"],
["Michigan Avenue Primary Care","Chicago, IL 60601"],
["The Association For Women's Health Care, Ltd.", "Chicago, IL 60602"],
["Uptown Psych","Chicago, IL 60640"]]

Practice.delete_all
practices.each do |data|
	p = Practice.new
	p.name = data[0]
	p.location = data[1]
	p.save
end

print "There are now #{Practice.count} practices in the database.\n"

doctors = [
{
	"first_name" => 'Robin',
	"last_name" => 'Tong',
	"specialty_id" => Specialty.find_by(name: "Primary Care Doctors").id,
	"practice_id" => Practice.find_by(name: "Chicago Health Medical Group").id,
	"professional_statement" => 'Robin Tong is a concerned and friendly primary care doctor and family physician serving the community of Chicago, IL. 
	Dr. Tong attended Midwestern University, the Chicago College of Osteopathic Medicine, where he received his medical degree, 
	and completed his residency at MacNeal Hospital. He studied biologic sciences at the University of Chicago. 
	Dr. Tong is a part of Chicago Health Medical Group. He is board certified by the American Board of Family Medicine. 
	He sees patients for illness, as well as other common and specialized reasons.',
	"img_url" => 'https://dsw5h1xg5uvx.cloudfront.net/1ae2ac97-d2d9-4feb-bcf6-18c50431cff7zoom.jpg'
},
{
	"first_name" => 'Joanna',
	"last_name" => 'Tylman',
	"specialty_id" => Specialty.find_by(name: "Dentists").id,
	"practice_id" => Practice.find_by(name: "Dental Art Clinic").id,
	"professional_statement" => 'With state of the art facilities in an office that is less than a year old, Dr. Tylman provides the highest quality care with a personal touch. 
	Welcoming patients of all ages, she practices general and cosmetic dentistry utilizing the latest digital diagnostic technologies and operating equipment. 
	In addition to her preventative, cosmetic and procedural care, she provides patients with the convenience of in-house specialists, including a periodontist and an endodontist. 
	Whatever you\'re dental needs, Dr. Tylman and the staff at Dental Art Clinic look forward to welcoming you into the office.',
	"img_url" => 'https://d2t808ag5aqhkh.cloudfront.net/7e2cc71e-f6cd-4f8e-bf18-398dd01b42a5zoom.jpg'
},
{   "first_name" => 'Nicole',
	"last_name" => 'Joy',
	"specialty_id" => Specialty.find_by(name: "Dermatologists").id,
	"practice_id" => Practice.find_by(name: "Millennium Park Dermatology").id,
	"professional_statement" => 'Nicole Joy is a caring and experienced dermatologist serving the community of Chicago, IL. 
	Dr. Joy attended Duke University, where she received her medical degree. 
	Joy is a part of Millennium Park Dermatology. She is board certified by the American Board of Dermatology.',
	"img_url" => 'https://dsw5h1xg5uvx.cloudfront.net/a63fc235-35e1-4f6b-a6d7-2a260234e1ffzoom.jpg'
},
{   "first_name" => 'Brooks',
	"last_name" => 'Wilkinson',
	"specialty_id" => Specialty.find_by(name: "Psychiatrists").id,
	"practice_id" => Practice.find_by(name: "Mercy Hospital--Doctors Office Center").id,
	"professional_statement" => 'Brooks Wilkinson is a caring and diligent psychiatrist based in Chicago, IL. 
	Dr. Wilkinson attended the American University of the Caribbean School of Medicine, where he received his medical degree, and completed his residency in psychiatry and fellowship in adolescent psychiatry at Michael Reese Hospital and Medical Center.
	Dr. Wilkinson is a part of Mercy Hospital--Doctors Office Center and is affiliated with Mercy Hospital & Medical Center in IL. He is certified in psychiatry by the American Board of Psychiatry and Neurology. 
	He is a member of the Illinois State Medical Society, the Chicago Medical Society, and the American Psychiatric Association.',
	"img_url" => 'https://d1cesmq0xhh7we.cloudfront.net/eab3bb00-81bb-4606-b1b2-8c24a776e540zoom.jpg'
},
{   "first_name" => 'Jihan',
	"last_name" => 'Akhtar',
	"specialty_id" => Specialty.find_by(name: "Eye Doctors" ).id,
	"practice_id" => Practice.find_by(name: "Rosin Eyecare").id,
	"professional_statement" => 'Jihan Akhtar is a diligent and caring ophthalmologist serving the communities of Northbrook and Chicago, IL. 
	Dr. Akhtar attended the University of Illinois, Chicago, where she received her medical degree. 
	She completed her internship at MacNeal Hospital and her residency in ophthalmology at Emory University. 
	Dr. Akhtar is a part of Rosin Eyecare. She is certified by the American Board of Ophthalmology. 
	She is a member of the American Academy of Ophthalmology, the Georgia Society of Ophthalmology, and the American Medical Association.',
	"img_url" => 'https://d2t808ag5aqhkh.cloudfront.net/d47dbd21-fd4a-4935-8a61-ae4d82e0d51fzoom.jpg'
},
{   "first_name" => 'Vincent',
	"last_name" => 'Roberts',
	"specialty_id" => Specialty.find_by(name: "Chiropractors").id,
	"practice_id" => Practice.find_by(name: "Aligned Modern Health").id,
	"professional_statement" => 'Dr. Vince Roberts, D.C. FACO is the lead chiropractic physician at Aligned Modern Health West Loop. 
	Dr. Roberts graduated Summa Cum Laude from National University of Health Sciences with prior B.S. and B.A. degrees. 
	In 2009 Dr. Roberts earned his diplomate and board certification in Chiropractic Orthopedics and is a Fellow of the Academy of Chiropractic Orthopedists (FACO). 
	Dr. Roberts has been a practicing chiropractic physician since 1998 as an associate physician and clinic director.',
	"img_url" => 'https://d1cesmq0xhh7we.cloudfront.net/e8fc9ec7-f04d-4e93-89b9-db6aa0b1e123zoom.jpg'
},	
{   "first_name" => 'Joshua',
	"last_name" => 'Merok',
	"specialty_id" => Specialty.find_by(name: "Primary Care Doctors").id,
	"practice_id" => Practice.find_by(name: "Michigan Avenue Primary Care").id,
	"professional_statement" => 'Dr. Merok earned his medical degree at the University of California, San Francisco, after completing his Bachelor of Science and Master’s degree in Toxicology at Massachusetts Institute of Technology. 
	He completed his residency in Family Medicine at Advocate Illinois Masonic Medical Center and fellowships at Stroger Hospital and Advocate Illinois Masonic Medical Center. 
	Dr. Merok also serves as a Clinical Assistant Professor of Family and Community Medicine at Northwestern\'s Feinberg School of Medicine, Clinical Instructor of Family Medicine at the University of Illinois-Chicago.',
	"img_url" => 'https://d1cesmq0xhh7we.cloudfront.net/df01cbf5-b274-4602-b3ec-a6b66709eadezoom.jpg'
},
{   "first_name" => 'Katherine',
	"last_name" => 'Fox',
	"specialty_id" => Specialty.find_by(name: "Primary Care Doctors").id,
	"practice_id" => Practice.find_by(name: "Michigan Avenue Primary Care").id,
	"professional_statement" => 'Katherine Fox is a mindful and considerate primary care doctor based in Chicago, IL. 
	Dr. Fox attended Loyola University Chicago, where she received her medical degree. She completed her residency in family medicine at MacNeal Hospital and her fellowship in primary care sports medicine at Advocate Lutheran General Hospital. 
	She received her bachelor’s degree from the University of Scranton.',
	"img_url" => 'https://d2t808ag5aqhkh.cloudfront.net/595f929f-5e2b-4570-b34b-4e57a2850d2bzoom.jpg'
},
{   "first_name" => 'Brook',
	"last_name" => 'Wharton',
	"specialty_id" => Specialty.find_by(name: "Gynecologists").id,
	"practice_id" => Practice.find_by(name: "The Association For Women's Health Care, Ltd.").id,
	"professional_statement" => 'Dr. Brook Wharton is a dedicated and compassionate obstetrician-gynecologist, serving patients in Chicago, Illinois. 
	She graduated from Bucknell University, completed her Master of Science degree at Columbia University and attended the University of Virginia School of Medicine, where she got her M.D. degree. 
	Dr. Wharton completed her residency at Northwestern University Medical Center, where she is now a Clinical Instructor at the University’s Feinberg School of Medicine.',
	"img_url" => 'https://d1cesmq0xhh7we.cloudfront.net/d0c8fbda-ddb8-47d3-9824-014468fd4d6bzoom.jpg'
},
{   "first_name" => 'Surinder',
	"last_name" => 'Sehdev',
	"specialty_id" => Specialty.find_by(name: "Psychiatrists").id,
	"practice_id" => Practice.find_by(name: "Uptown Psych").id,
	"professional_statement" => 'Coming from a diverse and multifaceted training program has provided me with the skills to work with a wide range of patient pathology. 
	I have extensive training experience in a variety of unique practice settings including correctional, community mental health, Veterans affairs, crisis stabilization and electroconvulsive therapy. 
	I have demonstarted psychotherapy competencies and sensitivity to diverse patient needs. My goal is to provide efficient and high quality care for patients through not only paying attention to the biological aspect of diagnosis and treatment but also incorporating a psychosocila approach.medical degree. She completed her residency in family medicine at MacNeal Hospital and her fellowship in primary care sports medicine at Advocate Lutheran General Hospital. 
	She received her bachelor’s degree from the University of Scranton.',
	"img_url" => 'https://dsw5h1xg5uvx.cloudfront.net/3420f57e-f70e-401f-b7ef-b0426af2a9b3zoom.jpg'
}
]
Doctor.delete_all
doctors.each do |doctor_data|
	d = Doctor.new
	d.first_name = doctor_data["first_name"]
	d.last_name = doctor_data["last_name"]
	d.specialty_id = doctor_data["specialty_id"]
	d.practice_id = doctor_data["practice_id"]
	d.professional_statement = doctor_data["professional_statement"]
	d.profile_img_url = doctor_data["img_url"]
	d.save
end
print "There are now #{Doctor.count} doctors in the database.\n"



timeslots = [[Doctor.find_by(first_name: "Robin", last_name: "Tong").id,"2017-4-3",DateTime.new(2017,4,3,9),DateTime.new(2017,4,3,9,30),30,false],[Doctor.find_by(first_name: "Robin", last_name: "Tong").id,"2017-4-3",DateTime.new(2017,4,3,10),DateTime.new(2017,4,3,10,30),30,false],[Doctor.find_by(first_name: "Robin", last_name: "Tong").id,"2017-4-3",DateTime.new(2017,4,3,10,30),DateTime.new(2017,4,3,11),30,false],
[Doctor.find_by(first_name:"Joanna", last_name: "Tylman").id,"2017-4-5", DateTime.new(2017,4,5,12),DateTime.new(2017,4,5,12,30),30,false],[Doctor.find_by(first_name:"Joanna", last_name: "Tylman").id,"2017-4-5",DateTime.new(2017,4,5,13),DateTime.new(2017,4,5,13,30),30,false],[Doctor.find_by(first_name:"Joanna", last_name: "Tylman").id,"2017-4-5",DateTime.new(2017,4,5,15,30),DateTime.new(2017,4,5,16),30,true],
[Doctor.find_by(first_name:"Nicole", last_name: "Joy").id,"2017-4-10",DateTime.new(2017,4,10,9),DateTime.new(2017,4,10,9,30),30,true],[Doctor.find_by(first_name:"Nicole", last_name: "Joy").id,"2017-4-10",DateTime.new(2017,4,10,12,30),DateTime.new(2017,4,10,13),30,false],[Doctor.find_by(first_name:"Nicole", last_name: "Joy").id,"2017-4-10",DateTime.new(2017,4,10,14),DateTime.new(2017,4,10,14,30),30,false],
[Doctor.find_by(first_name:"Brooks", last_name: "Wilkinson").id,"2017-4-12",DateTime.new(2017,4,12,10),DateTime.new(2017,4,12,10,30),30,true],[Doctor.find_by(first_name:"Brooks", last_name: "Wilkinson").id,"2017-4-12",DateTime.new(2017,4,12,11),DateTime.new(2017,4,12,11,30),30,false], [Doctor.find_by(first_name:"Brooks", last_name: "Wilkinson").id,"2017-4-12",DateTime.new(2017,4,12,14,30),DateTime.new(2017,4,12,15),30,false],
[Doctor.find_by(first_name:"Jihan", last_name: "Akhtar").id,"2017-5-12",DateTime.new(2017,5,12,10),DateTime.new(2017,5,12,10,30),30,false],[Doctor.find_by(first_name:"Jihan", last_name: "Akhtar").id,"2017-5-12",DateTime.new(2017,5,12,11),DateTime.new(2017,5,12,11,30),30,true], [Doctor.find_by(first_name:"Jihan", last_name: "Akhtar").id,"2017-5-12",DateTime.new(2017,5,12,14,30),DateTime.new(2017,5,12,15),30,false],
[Doctor.find_by(first_name:"Vincent", last_name: "Roberts").id,"2017-5-15",DateTime.new(2017,5,15,10),DateTime.new(2017,5,15,10,30),30,false],[Doctor.find_by(first_name:"Vincent", last_name: "Roberts").id,"2017-5-25",DateTime.new(2017,5,25,11),DateTime.new(2017,5,25,11,30),30,false], [Doctor.find_by(first_name:"Vincent", last_name: "Roberts").id,"2017-5-30",DateTime.new(2017,5,30,11,30),DateTime.new(2017,5,30,12),60,true]]

TimeSlot.delete_all
timeslots.each do |slot|
	t = TimeSlot.new
	t.doctor_id = slot[0]
	t.date = slot[1]
	t.start_time = slot[2]
	t.end_time = slot[3]
	t.duration = slot[4]
	t.is_filled = slot[5]
	t.save
end

print "There are now #{TimeSlot.count} time slots in the database.\n"

users = [["Victoriatheast","victoria27wu@gmail.com","test",false,0],["ProblemPatient","pp@gmail.com","yes",false,0],["Admin","Admin@gmail.com","admin",true,0]]
	User.delete_all
	users.each do |user_data|
		user = User.new
		user.name = user_data[0]
		user.email_address = user_data[1]
		user.password = user_data[2]
		user.admin = user_data[3]
		user.points = user_data[4]
		user.save
	end
print "There are now #{User.count} users in the database.\n"


appointments = [[TimeSlot.find_by(doctor_id: Doctor.find_by(first_name:"Joanna", last_name: "Tylman").id ,date: "2017-4-5",start_time:DateTime.new(2017,4,5,15,30)).id,User.find_by(name: "Victoriatheast").id,DateTime.new(2017,3,25,10),"Great",true,true],
[TimeSlot.find_by(doctor_id: Doctor.find_by(first_name:"Brooks", last_name: "Wilkinson").id ,date: "2017-4-12",start_time: DateTime.new(2017,4,12,10)).id,User.find_by(name: "ProblemPatient").id,DateTime.new(2017,2,15,14),"",false,false],
[TimeSlot.find_by(doctor_id: Doctor.find_by(first_name:"Nicole", last_name: "Joy").id ,date: "2017-4-10",start_time: DateTime.new(2017,4,10,9)).id,User.find_by(name: "Victoriatheast").id,DateTime.new(2017,3,4,14),"",false,false],
[TimeSlot.find_by(doctor_id: Doctor.find_by(first_name:"Jihan", last_name: "Akhtar").id ,date: "2017-5-12",start_time: DateTime.new(2017,5,12,11)).id,User.find_by(name: "ProblemPatient").id,DateTime.new(2017,3,15,13),"The doctor is very patient",true,true],
[TimeSlot.find_by(doctor_id: Doctor.find_by(first_name:"Vincent", last_name: "Roberts").id ,date: "2017-5-30",start_time: DateTime.new(2017,5,30,11,30)).id,User.find_by(name: "ProblemPatient").id,DateTime.new(2017,4,15,14),"",false,false]]
	Appointment.delete_all
	appointments.each do |data|
		apt = Appointment.new
		apt.time_slot_id = data[0]
		apt.user_id = data[1]
		apt.updated_at = data[2]
		apt.review = data[3]
		apt.is_reviewed = data[4]
		apt.is_completed = data[5]
		apt.save
	end

print "There are now #{Appointment.count} appointments in the database.\n"