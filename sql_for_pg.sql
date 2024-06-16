DROP TABLE IF EXISTS dataSource;

CREATE TABLE dataSource (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(255),
	last_name VARCHAR(255),
	email VARCHAR(255),
	gender VARCHAR(255)
);

INSERT INTO dataSource (first_name, last_name, email, gender) 
VALUES  
	(NULL,                  'Hilda Sodo',        'hsodo1o@surveymonkey.com',     'F'),                        
	('Torin Cardus',        NULL,               'tcardus21@ow.ly',              'Male'),                        
	(NULL,                  'Artur MacShane',    'amacshane2d@princeton.edu',    'M'),                        
	('Freedman Krause',     NULL,               'fkrause5t@dagondesign.com',    'Male'),                        
	(NULL,                  'Lemmers Remington', 'rlemmers70@tripod.com',        'Male'),                        
	('Tucker',              'Crauford',          'tcraufords@chicagotribune.com','M'),                        
	('Winfield',            'Sharpe',            'wsharpe5k@amazon.co.jp',      'Male'),                        
	('Caresa',              'Symmers',           'csymmers@example.com',         'F'),     
	('Rosita',              'McGing',            'rmcging5@nps.gov',             'Female'),                        
	('Elinor',              'Barca',             'ebarca54@ning.com',            'Female'),                        
	('Paxon',               'Rimington',         'primington@example.com',       'Male'),                        
	('Truda',               'Biffin',            'tbiffin89@wired.com',          'F'),                        
	('Noland',              'Buesden',           'nbuesden@example.com',         'Male'),                                           
	('Brana Champion',      NULL,                'bchampiondv@csmonitor.com',    'Female');
