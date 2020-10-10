USE portfoliodb;

INSERT INTO projects (project_name, description, gitlab_link) VALUES
('projekti1', 'projekti1kuvaus', 'projekti1linkki.fi'),
('projekti2', 'projekti2kuvaus', 'projekti2linkki.fi'),
('projekti3', 'projekti3kuvaus', 'projekti3linkki.fi'),
('projekti4', 'projekti4kuvaus', 'projekti4linkki.fi');

INSERT INTO images(link, description, project_id) VALUES
('shorturl.at/oyNP1', 'kuvaus1', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti1')),
('shorturl.at/oyNP1', 'kuvaus2', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti2')),
('shorturl.at/oyNP1', 'kuvaus3', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti3')),
('shorturl.at/oyNP1', 'kuvaus4', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti4'));

INSERT INTO images(link, description, project_id) VALUES
('shorturl.at/oyNP1', 'kuvaus5', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti1')),
('shorturl.at/oyNP1', 'kuvaus6', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti1')),
('shorturl.at/oyNP1', 'kuvaus7', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti2')),
('shorturl.at/oyNP1', 'kuvaus8', (SELECT projects.project_id FROM projects WHERE projects.project_name='projekti3'));