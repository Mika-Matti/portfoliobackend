CREATE DATABASE IF NOT EXISTS portfolioDB;

USE portfolioDB;

CREATE TABLE projects
(
  project_id INT NOT NULL AUTO_INCREMENT,
  project_name VARCHAR(50) NOT NULL,
  project_desc VARCHAR(900) NOT NULL,
  PRIMARY KEY (project_id)
);

CREATE TABLE links
(
	link_id INT NOT NULL AUTO_INCREMENT,
	link_isimage BOOLEAN NOT NULL,
	link_url VARCHAR(250) NOT NULL,
	link_desc VARCHAR(250),
	project_id INT NOT NULL,
	PRIMARY KEY(link_id),
	FOREIGN KEY(project_id) REFERENCES projects(project_id)
);