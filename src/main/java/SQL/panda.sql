/*
  this is database designed by ruankun.
  contact: qkmc@outlook.com
  db name should be:panda
*/

CREATE TABLE t_user(
  user_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  user_login VARCHAR(16) NOT NULL,
  user_pass VARCHAR(32),
  old_pass VARCHAR(32),
  user_name VARCHAR(12),
  user_mail VARCHAR(32),
  user_url VARCHAR(32),
  user_regtime TIMESTAMP DEFAULT current_timestamp,
  user_status enum('true','false') NOT NULL,
  display_name VARCHAR(12)
);

CREATE TABLE t_admin(
  admin_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  admin_status enum('true','false') NOT NULL,
  f_user_id INT UNIQUE,
  FOREIGN KEY (f_user_id) REFERENCES t_user(user_id)
);

CREATE  TABLE t_problem (
  problem_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  pbm_title VARCHAR(32),
  pbm_description TEXT,
  pbm_input TEXT,
  pbm_output TEXT
);

CREATE TABLE t_record(
  record_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  f_pbm_id INT ,
  f_user_id INT ,
  pbm_result ENUM('true','false') NOT NULL,
  pbm_time INT,
  pbm_code TEXT,
  FOREIGN KEY (f_user_id) REFERENCES t_user(user_id),
  FOREIGN KEY (f_pbm_id) REFERENCES t_problem(problem_id)
);