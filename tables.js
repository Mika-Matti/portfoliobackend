// Table names and column names for db use

const db = {
  host: "localhost",
  user: "root",
  password: "root",
  database: "portfoliodb",
};

const projects = {
  table: "projects",
  project_id: "project_id",
  project_name: "project_name",
  project_desc: "project_desc",
};

const links = {
  table: "links",
  link_id: "link_id",
  link_isimage: "link_isimage",
  link_url: "link_url",
  link_desc: "link_desc",
  project_id: "project_id",
};

const tables = {
  db: db,
  projects: projects,
  links: links,
};

module.exports = tables;
