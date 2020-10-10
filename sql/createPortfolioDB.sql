CREATE DATABASE IF NOT EXISTS portfolioDB;

USE portfolioDB;

CREATE TABLE project
(
  project_id INT NOT NULL AUTO_INCREMENT,
  description VARCHAR(900) NOT NULL,
  gitlab_link VARCHAR(250) NOT NULL,
  name VARCHAR(50) NOT NULL,
  PRIMARY KEY (project_id)
);

CREATE TABLE image
(
  image_id INT NOT NULL AUTO_INCREMENT,
  link VARCHAR(250) NOT NULL,
  description VARCHAR(250),
  project_id INT NOT NULL,
  PRIMARY KEY (image_id),
  FOREIGN KEY (project_id) REFERENCES project(project_id)
);