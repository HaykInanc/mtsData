/***********************/
/* первый набор данных */
/***********************/

drop table if exists dataSource;

create table dataSource (
	id integer primary key autoincrement,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	gender varchar(255)
);

insert into dataSource (first_name, last_name, email, gender) 
	values  
	(null,                      'Hilda Sodo',           'hsodo1o@surveymonkey.com',                       'F'),                        
	('Torin Cardus',             null,                  'tcardus21@ow.ly',                                'Male'),                        
	(null,                      'Artur MacShane',       'amacshane2d@princeton.edu',                      'M'),                        
	('Freedman Krause',          null,                  'fkrause5t@dagondesign.com',                      'Male'),                        
	(null,                      'Lemmers Remington',    'rlemmers70@tripod.com',                          'Male'),                        
	('Tucker',                  'Crauford',             'tcraufords@chicagotribune.com +7 9346553 221',   'M'),                        
	('Winfield',                'Sharpe',               'wsharpe5k@amazon.co.jp +7-912-321-84-43',        'Male'),                        
	('Caresa',                  'Symmers',              '+79824433556',                                   'F'),     
	('Rosita',                  'McGing',               'rmcging5@nps.gov 89235428443',                   'Female'),                        
	('Elinor',                  'Barca',                'ebarca54@ning.com 89022338843',                  'Female'),                        
	('Paxon',                   'Rimington',            '89094235643',                   				  'Male'),                        
	('Truda',                   'Biffin',               'tbiffin89@wired.com',                            'F'),                        
	('Noland',                  'Buesden',              '893265432 85',                                   'Male'),                                           
	('Brana Champion',           null,                  'bchampiondv@csmonitor.com',                      'Female');



/***********************/
/* второй набор данных */
/***********************/


drop table if exists dataSource2;

create table dataSource2 (
	id integer primary key autoincrement,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	gender varchar(255)
);


insert into dataSource2 (first_name, last_name, email, gender) 
	values  
	('Rosita',                  'McGing',               'rmcging5@nps.gov 89235428443',                   'Female'),                        
	('Elinor',                  'Barca',                'ebarca54@gmail.com 89022338843',                  'Female'),                        
	('Paxon',                   'Rimington',            '89094235643',                   				  'Male'),                        
	('Truda',                   'Biffin',               'tbiffin81@wired.com 89096450730',                            'F'),                        
	('Noland',                  'Buesden',              '893265432 56',                                   'Male'),                                           
	('Brana Champion',           null,                  'CBrana@csmonitor.com',                      'Female');



/*****************/
/*****************/
/*****************/
/*****************/


drop table if exists personsData;
create table personsData (
	id integer primary key autoincrement,
	first_name varchar(255),
	last_name varchar(255),
	email varchar(255),
	phone varchar(255),
	gender varchar(255),
	created_at datetime default current_timestamp
);



drop table if exists dataSource01;
create table dataSource01 as 
select 
case 
	when instr(lower(gender), 'f') = 0
		then 'male'
		else 'female'
end as gender,

  case
	  when instr(email, '@') = 0 then null
	  when instr(email, ' ') = 0 then email
	  when instr(email, ' ') <> 0 
	  	then substr(email, 0 , instr(email, ' '))
  end as email,

  case 
  	when instr(email, '@') = 0 then replace(email, ' ', '')
	when instr(email, ' ') = 0 then null
	when instr(email, ' ') <> 0
		then replace(substr(email, instr(email, ' ')), ' ', '')
  end as phone,

  case
	when instr(first_name, ' ')
		then substr(first_name, 0, instr(first_name, ' '))
	when first_name is null
		then substr(last_name, 0, instr(last_name, ' '))
	else first_name
end as first_name,

case
	when instr(last_name, ' ')
		then substr(last_name, instr(last_name, ' ')+1)
	when last_name is null
		then substr(first_name, instr(first_name, ' ')+1)
	else last_name
end as last_name
from dataSource;
