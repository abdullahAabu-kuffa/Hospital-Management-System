

UPDATE doctors SET name ='Dr. Abdullah A.Abu-kuffa' WHERE doctor_id = 1;

/*
--CALL GetPatientsByRoom('101');
CREATE VIEW Billing_Summary as 
SELECT p.name as patient_name ,
       b.total_amount as total_amount,
       b.bill_date as bill_date,
       b.payment_status 
FROM patients p JOIN billing b ON p.patient_id = b.patient_id;
*/





/*SELECT p.name, MAX(mr.visit_date) AS latest_visit
FROM patients p
JOIN medical_records mr ON p.patient_id = mr.patient_id
GROUP BY p.patient_id;
SELECT p.name as name_patient ,mr.visit_date as last_visit_data
 FROM patients p 
JOIN medical_records mr  ON p.patient_id = mr.patient_id
ORDER BY mr.visit_date;
*/
/* 
SELECT r.room_type, COUNT(ra.assignment_id) FROM rooms r
JOIN room_assignments ra on r.room_id = ra.room_id
GROUP BY r.room_type;
SELECT * FROM billing b
JOIN patients p ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Pending';
SELECT p.patient_id,p.name FROM patients  p
JOIN room_assignments ra ON p.patient_id = ra.patient_id
GROUP BY p.patient_id HAVING COUNT(ra.assignment_id)>=1;
SELECT dt.name , COUNT(s.staff_id), COUNT(d.doctor_id) 
FROM departments dt 
JOIN staff s on s.department_id = dt.department_id
JOIN doctors d on d.department_id = dt.department_id
GROUP BY dt.name;
SELECT d.name , COUNT(DISTINCT mr.patient_id) as patient_count FROM doctors d 
JOIN medical_records mr on d.doctor_id = mr.doctor_id
GROUP BY d.name;
UPDATE patients SET created_at = '2024-01-01' WHERE patient_id = 1;
SELECT department_id ,count(*) FROM staff 
GROUP BY department_id HAVING count(*)>1;
SELECT COUNT(*),gender from patients GROUP BY gender;
SELECT COUNT(*), blood_group from patients GROUP BY blood_group;
SELECT avg(total_amount) FROM billing;
SELECT count(*) as count_patients from patients;
select * from patients;
select NAME , phone from doctors;
select * from staff WHERE department_id = 105;
select * from rooms WHERE is_available =TRUE ;
select * FROM patients WHERE blood_group = "A+";
SELECT * FROM doctors WHERE specialty = 'Cardiology';
SELECT * FROM billing WHERE total_amount > 300;
SELECT * FROM patients WHERE created_at > '2025-04-10';
SELECT * FROM room_assignments WHERE released_date < '2025-04-20';
SELECT patients.name, doctors.name FROM patients 
JOIN medical_records on medical_records.patient_id = patients.patient_id
JOIN doctors on medical_records.patient_id = doctors.doctor_id;
SELECT rooms.room_number, patients.name as patient_name FROM patients 
JOIN room_assignments on room_assignments.patient_id = patients.patient_id
JOIN rooms on room_assignments.room_id = rooms.room_id;
SELECT staff.name , departments.name FROM staff JOIN departments ON
staff.department_id = departments.department_id;
*/