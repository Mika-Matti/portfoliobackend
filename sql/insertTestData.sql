USE portfoliodb;

INSERT INTO projects (project_name, project_desc) VALUES
('projekti1', 'projekti1kuvaus'),
('projekti2', 'projekti2kuvaus'),
('projekti3', 'projekti3kuvaus'),
('projekti4', 'projekti4kuvaus');

INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('shorturl.at/oyNP1', 'kuvalinkkikuvaus1', TRUE, 1),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus2', TRUE, 1),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus3', TRUE, 1),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus4', TRUE, 2),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus5', TRUE, 2),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus6', TRUE, 3),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus7', TRUE, 3),
('shorturl.at/oyNP1', 'kuvalinkkikuvaus8', TRUE, 4);

INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('linkki1.fi', 'linkkikuvaus1', FALSE, 1),
('linkki2.fi', 'linkkikuvaus5', FALSE, 1),
('linkki3.fi', 'linkkikuvaus6', FALSE, 2),
('linkki4.fi', 'linkkikuvaus2', FALSE, 2),
('linkki5.fi', 'linkkikuvaus7', FALSE, 2),
('linkki6.fi', 'linkkikuvaus8', FALSE, 3),
('linkki7.fi', 'linkkikuvaus3', FALSE, 4),
('linkki8.fi', 'linkkikuvaus4', FALSE, 4);