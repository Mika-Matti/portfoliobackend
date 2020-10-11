USE portfoliodb;

#Projektit
INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Palindromitarkastaja', 
'Sovellus, joka ottaa syötteenä käyttäjältä sanan, ja tarkistaa onko sana palindromi',
'<p>Harjoituksessa 1 tuli rakentaa komentorivipohjainen sovellus, jossa sovellus pyytää käyttäjältä sanan, 
syöttää sanan parametrina funktioon, joka tekee sanasta kopion uuteen muuttujaan, mutta kirjaimet 
päinvastaisessa järjestyksessä, ja sitten vertaa näitä kahta toisiinsa pieninä kirjaimina ja katsoo, 
ovatko nämä kaksi sanaa yhtenäiset ja jos ovat, niin palautetaan arvo true.</p>
<p>Ohjelma sitten katsoo, että jos funktio palauttaa true, voi ohjelma tulostaa käyttäjälle tiedon, 
että kyseessä oli palindromi tai funktion palauttaessa false, sovellus kertoo sitten käyttäjälle, 
että annettu sana ei ollut palindromi.</p>');

INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Puhelinluettelo', 
'Sovellus, joka puhelinluettelon tavoin näyttää henkilön ja puhelinnumeron,
sekä toteuttaa muutaman eri valintatoiminnon', 
'<p>Harjoituksessa 2 piti toteuttaa puhelinluettelo, johon voi lisätä nimiä ja numeroita, 
etsiä numeroita nimien perusteella sekä näyttää koko luettelon.</p>
<p>Tässä komentorivipohjaisessa ohjelmassa kaikki oli melko yksinkertaista. 
Rakenna pieni valikko switch casen avulla, ja toteuta sitten jokainen toiminto, 
mitä valikosta voi valita.</p>
<p>Yhtenä osana tehtävää oli tehdä funktio, joka palauttaisi annetun nimen 
perusteella puhelinnumeron. Miettiessä siltä kannalta, että samannimisiä voisi 
olla useita, vein tätä ideaa hieman pidemmälle ja päätin palauttaa puhelinnumeron sijasta listan, 
johon on kerätty kaikki yhteystieto-objektit, joiden nimestä löytyy jokin osa, joka täsmää annettuun 
hakunimeen.</p>');

INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Urheilija 1', 
'Sovellus, joka toteuttaa pääluokan sekä alaluokan,
joka perii pääluokan ominaisuudet.', 
'<p>Harjoituksessa 3 tuli toteuttaa pääluokka, sekä alaluokka, 
joka perii pääluokalta ominaisuuksia, ja sitten testata pienellä 
pääohjelmalla tämän alaluokan toimivuutta.</p>
<p>Harjoitus oli varsin hyvä tehdä, sillä se sai minut tarkistamaan 
ja lueskelemaan muutamia uusia asioita, sillä en ole kovin usein tehnyt 
näitä javascriptissä. Luokat ja oliot ovat enemmän tuttuja java-kehityksestä 
ja ne ovat hieman erilaisia javascriptissä toteutuksen suhteen.</p>
<p>Lisäksi tein tehtävää varten gitlabiin projektin ja pääsin kokeilemaan 
ssh-avaimen generointia ja sen yhdistämistä gitlabin profiiliin. 
Täten sain uploadattua projektini gitin avulla gitlabiin.</p>');

INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Node.js Server', 
'Node.js serveri, joka toteuttaa metodit create, read, update ja delete', 
'<p>Harjoituksessa 4 otettiin esimerkkikoodi, jossa oli valmiina tietokanta-yhteys ja muutama tietokantatoiminto, jotka testattiin läpi. Tätä varten tehtiin tietokanta ja siihen yksi pöytä, jota käytettiin testeissä.</p>
<p>Tämän jälkeen koodia muutettiin niin, että siihen tuotiin mukaan express-kirjasto ja tarkoituksena oli siihen luoda REST metodeja, tarkemmin create, read, update ja delete.</p>
<p>Read oli melko suoraviivainen tehdä, eikä tämän kokeilemiseen tarvinnut vielä postmania. Lopputuloksena, kun menin selaimessa localhost:3000/users, palautti tämä näkyviin resurssit, joissa näkyi kaikki tietokannan taulusta haetut henkilöt attribuutteineen.</p>
<p>Create otti hieman enemmän aikaa. Helppo osuus oli tehdä oikeanlainen query tietokantaan, mutta täytyi ensin hetki postmanissa ihmetellä, missä muodossa syötän tiedot, ja millä tavalla sitten käsittelisin ne serverillä.</p>
<p>Kun sitten lopulta kirjoitin JSON muodossa lähetettävän bodyn postmanissa ja näin, että serverillä console.log palautti oikean näköistä tietoa, niin loppu onnistui helposti.</p>
<p>Updaten tekeminen oli varsin helppo tämän jälkeen. Postmanissa valitaan PUT ja oikean userin URI, josta saadaan ID parametriksi queryyn ja sitten vielä lähetetään JSON, josta katsotaan päivitettävät tiedot.</p>
<p>Tähän rakensin pienen ehdon, että jos puhelin tai nimi-ominaisuus JSONissa puuttuu, niin päivitetään vain toinen ominaisuus. Jos molemmat löytyy, päivitetään molemmat tiedot.</p>
<p>Lopuksi delete, joka ei vaadi muuta kuin oikean userin URIn ja 
sitten postmanissa valitaan DELETE metodi.</p>');

INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Yksinkertainen tietojenhaku serveriltä',
'Sovellus on yksinkertainen käyttöliittymä, joka hakee serveriltä tietueet
ja näyttää ne käyttöliittymässä',
'<p>Harjoituksessa tuli hakea edellisellä viikolla tehtävässä 4 tehdystä backendistä 
käyttäjät ja näyttää ne sitten front endissä olevassa html-tiedostossa pöydän muodossa.</p>
<p>Tehtävää tehdessä huomasin, että kutsu ei meinannut mennä läpi, ja kävi ilmi, että olin 
määritellyt headers-asetuksia backendissä get yms. metodien jälkeen. Määrittelemällä nämä 
ennen mitään metodeista korjasi ongelman ja tämän jälkeen vain piti tehdä pieni 
jquery-skripti front endissä, joka kävi läpi palautetun JSONin kaikki oliot ja 
mappasi näistä tiedot aina yhdelle uudelle riville pöytään.</p>');

INSERT INTO projects (project_name, project_desc, project_content) VALUES
('Urheilija II', 
'Sovelluskokonaisuus, jossa toteutetaan tietokanta, serveri sekä käyttöliittymä', 
'<p>Harjoituksessa tuli tehdä tietokanta, jossa on urheilijat sisältävä taulu, 
node.js backend, joka sisälsi CRUD metodit sekä reactilla toteutettu frontend, 
joka teki kutsuja backendiin ja näytti dataa sieltä.</p>
<p>Aloitin helpoimmasta, loin tietokannan, jossa on taulu urheilijat.
Lähdin sitten tekemään backendiä, johon tein erillisen moduulin router, 
jossa on kutsuttavat metodit ja niiden reitit. Sitten tuli haasteellisempi osuus, 
käyttöliittymän rakentaminen. Aloitin tekemällä perus react appin, jossa oli ensin 
komponentit app, context sekä urheilijat.</p> <p>Seuraava tavoite oli saada context 
hakemaan axios-kutsulla serveriltä kaikki urheilijat ja lähettämään nämä 
urheilijat-komponenttiin. Tämä kun onnistui, loin urheilijatieto-komponentin, 
joihin tuli yksittäisen 
urheilijan tiedot siistiin muotoon.</p> <p>Kun nämä vaiheet olivat onnistuneet, 
loin linkin sivun yläkulmaan, josta on tarkoitus voida lisätä uusia urheilijoita. 
Loin komponentin, jossa on lomake tietojen täyttämiseen. Kun tiedot lähetetään, 
ohjelma katsoo, että tiedot menee serverille, ja lisää ne sitten myös näkyviin 
käyttöliittymässä. Tässä kohtaa muutin alkuperäistä SQL-taulukkoani, koska otin käyttöön 
uuid-kirjaston. Taulukossa oli alunperin automaattisesti numeroitu id, mutta tämän 
jälkeen id tuli aina käyttöliittymästä, jotta se olisi heti lisäyksen jälkeen käytössä 
käyttöliittymässä myös.</p> <p>Id:n käyttö tuli tärkeäksi kun aloin tekemään urheilijan 
poistamis, sekä muokkaustoimintoja. Yhden urheilijan tietojen yläpuolelle lisäsin kaksi 
nappia, joista voi joko poistaa tai muokata urheilijaa. Poisto oli helppo, mutta 
muokkaamisessa meni hieman enemmän aikaa. Kesti hetki saada urheilijan tiedot ja täyttää 
muokkauksessa käytetty lomake valmiiksi tiedoilla, jotta päivittäminen ei olisi niin 
vaivalloista.</p> <p>Lopputulos oli varsin siistiltä näyttävä, helppokäyttöinen sivu, 
joka tuntui toimivan hyvin. Bootstrap-kirjasto teki lähes kaiken työn muotoilussa pienellä 
vaivalla.</p> <p>Yksi minua häiritsevä asia, jossa olisi kehittämisen varaa oli se, 
että uuid ei ole minkäänlainen järjestyksessä menevä systeemi. Täten kun tietueet 
tuodaan käyttöliittymään, ei niillä ole oikeastaan mitään järkevää järjestystä. 
Tämä ei ollut tehtävän vaatimuksissa, joten sen ei pitäisi olla ongelma.</p>
<b>UPDATE 9.10.2020</b>
<p>Tein koodiin muutoksia, poistaen uuid-kirjaston käytöstä ja käyttäen SQL:n omaa 
autoincremented number id:tä. Tietueet haetaan nyt tietokannasta descending orderissa ja 
täten käyttöliittymä näyttää aina tuoreimmat lisäykset ensin.</p>');

#Linkit
INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('https://gitlab.com/mikamatti.auerkallio/urheilija1', 'Gitlab', FALSE, 3),
('https://gitlab.com/mikamatti.auerkallio/tehtava4', 'Gitlab', FALSE, 4),
('https://gitlab.com/mikamatti.auerkallio/tehtava5', 'Gitlab', FALSE, 5),
('https://gitlab.com/mikamatti.auerkallio/urheilija2backend', 'Backend & SQL', FALSE, 6),
('https://gitlab.com/mikamatti.auerkallio/urheilija2client', 'Frontend', FALSE, 6);

#Kuvat
#Urheilijakuvat
INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('http://localhost:8080/images/urheilija2/1.png', 'Etusivu', TRUE, 6),
('http://localhost:8080/images/urheilija2/2.png', 'Etusivu', TRUE, 6),
('http://localhost:8080/images/urheilija2/3.png', 'Lisää urheilija', TRUE, 6),
('http://localhost:8080/images/urheilija2/4.png', 'Muokkaa urheilijaa', TRUE, 6);
#Tiedonhakijakuva
INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('http://localhost:8080/images/tiedonhakija/1.png', 'Käyttöliittymä', TRUE, 5);

#Puhelinluettelokuva
INSERT INTO links(link_url, link_desc, link_isimage, project_id) VALUES
('http://localhost:8080/images/puhelinluettelo/1.png', 'Lisää tietue', TRUE, 2),
('http://localhost:8080/images/puhelinluettelo/1.png', 'Näytä tietueet', TRUE, 2),
('http://localhost:8080/images/puhelinluettelo/3.png', 'Etsi tietue', TRUE, 2);
