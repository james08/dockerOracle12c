CREATE USER james IDENTIFIED BY password;
GRANT CONNECT TO james;
GRANT CONNECT, RESOURCE, DBA TO james;
GRANT CREATE SESSION TO james;
GRANT UNLIMITED TABLESPACE TO james;

CREATE TABLE james.personalInfo (
  id NUMBER(10),
  name VARCHAR(50),
  lastName VARCHAR(50)
);

INSERT into james.personalInfo values (123456, 'Captain', 'Hook');
