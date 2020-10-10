CREATE DATABASE IF NOT EXISTS portfolioDB;

USE portfolioDB;

CREATE TABLE projects
(
  project_id INT NOT NULL AUTO_INCREMENT,
  project_name VARCHAR(50) NOT NULL,
  description VARCHAR(900) NOT NULL,
  gitlab_link VARCHAR(250) NOT NULL,
  PRIMARY KEY (project_id)
);

CREATE TABLE images
(
  image_id INT NOT NULL AUTO_INCREMENT,
  link VARCHAR(250) NOT NULL,
  description VARCHAR(250),
  project_id INT NOT NULL,
  PRIMARY KEY (image_id),
  FOREIGN KEY (project_id) REFERENCES projects(project_id)
);