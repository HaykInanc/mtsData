DROP TABLE IF EXISTS dataSource;

CREATE TABLE dataSource (
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255),
    gender VARCHAR(255)
);

INSERT INTO dataSource (first_name, last_name, email, gender) VALUES 
    (null, 'Hilda Sodo', 'hsodo1o@surveymonkey.com', 'F'),
    ('Torin Cardus', null, 'tcardus21@ow.ly', 'Male'),
    (null, 'Artur MacShane', 'amacshane2d@princeton.edu', 'M'),
    ('Freedman Krause', null, 'fkrause5t@dagondesign.com', 'Male'),
    (null, 'Lemmers Remington', 'rlemmers70@tripod.com', 'Male'),
    ('Tucker', 'Crauford', 'tcraufords@chicagotribune.com +7 9346553 221', 'M'),
    ('Winfield', 'Sharpe', 'wsharpe5k@amazon.co.jp +7-912-321-84-43', 'Male'),
    ('Caresa', 'Symmers', '+79824433556', 'F'),
    ('Rosita', 'McGing', 'rmcging5@nps.gov 89235428443', 'Female'),
    ('Elinor', 'Barca', 'ebarca54@ning.com 89022338843', 'Female'),
    ('Paxon', 'Rimington', '89094235643', 'Male'),
    ('Truda', 'Biffin', 'tbiffin89@wired.com', 'F'),
    ('Noland', 'Buesden', '893265432 85', 'Male'),
    ('Brana Champion', null, 'bchampiondv@csmonitor.com', 'Female');
