DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS mapping;
DROP TABLE IF EXISTS language;

CREATE TABLE employee (id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, name TEXT, surname TEXT);
CREATE TABLE language (id INT IDENTITY(1,1) PRIMARY KEY NOT NULL, language_program_type TEXT)
CREATE TABLE mapping (id INT IDENTYTY(1,1) PRIMARY KEY NOT NULL, id_employee INT, id_language INT,
CONSTRAINT FK_EMP_MAP FOREIGN KEY (id_employee) REFERENCES employee (id),
CONSTRAINT FK_LANG_MAP FOREIGN KEY (id_language) REFERENCES language (id))

INSERT INTO employee VALUES (	, Aleksandr		, Anson);
INSERT INTO employee VALUES (	, Vladislav		, Kimasov);
INSERT INTO employee VALUES (	, Dmitriy		, Suvaev);

INSERT INTO language VALUES (	, 'C#');
INSERT INTO language VALUES (	, 'Java');
INSERT INTO language VALUES (	, 'Lua');

INSERT INTO mapping VALUES (	, 1, 1);
INSERT INTO mapping VALUES (	, 1, 3);
INSERT INTO mapping VALUES (	, 2, 2);
INSERT INTO mapping VALUES (	, 3, 2);
INSERT INTO mapping VALUES (	, 3, 3);

