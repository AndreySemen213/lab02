DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS rooms;
DROP TABLE IF EXISTS pcs;
DROP TABLE IF EXISTS installs;
DROP TABLE IF EXISTS soft;



CREATE TABLE soft
(
	id integer PRIMARY KEY,
	sname varchar(150),
	ver varchar(50),
	quant integer
);

CREATE TABLE installs
(
	pc_id integer,
	soft_id integer
);

CREATE TABLE pcs
(
	id integer PRIMARY KEY,
	room_id integer,
	note varchar(100),
	ip_addr varchar(12),
	mac_addr varchar(17) 
);

CREATE TABLE rooms
(
	id integer PRIMARY KEY,
	num integer,
	emp_id integer
);

CREATE TABLE employees
(
	id integer PRIMARY KEY,
	lname varchar(20),
	fname varchar(20),
	mname varchar(20)
);
