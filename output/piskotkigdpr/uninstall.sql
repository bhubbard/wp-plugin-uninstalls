-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piskotki-gdpr-zavesa', 'piskotki-gdpr-barva-zavese', 'piskotki-gdpr-lokacija', 'piskotki-gdpr-senca-okna', 'piskotki-gdpr-zaobljenost-okna', 'piskotki-gdpr-barva-ozadja', 'piskotki-gdpr-animacija', 'piskotki-gdpr-ime-strani', 'piskotki-gdpr-trajanje-piskotka', 'piskotki-gdpr-barva-ikone', 'piskotki-gdpr-barva-pisave', 'piskotki-gdpr-velikost-pisave', 'piskotki-gdpr-naslov', 'piskotki-gdpr-besedilo', 'piskotki-gdpr-barva-povezave', 'piskotki-gdpr-ime-povezave-pogoji', 'piskotki-gdpr-povezava-pogoji', 'piskotki-gdpr-velikost-povezave', 'piskotki-gdpr-besedilo-gumba', 'piskotki-gdpr-barva-gumba', 'piskotki-gdpr-zaobljenost-gumba', 'piskotki-gdpr-barva-gumba-povezave', 'piskotki-gdpr-velikost-gumba-povezave');
DELETE FROM wp_options WHERE option_name LIKE '%-zavesa';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-zavese';
DELETE FROM wp_options WHERE option_name LIKE '%-lokacija';
DELETE FROM wp_options WHERE option_name LIKE '%-senca-okna';
DELETE FROM wp_options WHERE option_name LIKE '%-zaobljenost-okna';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-ozadja';
DELETE FROM wp_options WHERE option_name LIKE '%-animacija';
DELETE FROM wp_options WHERE option_name LIKE '%-ime-strani';
DELETE FROM wp_options WHERE option_name LIKE '%-trajanje-piskotka';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-ikone';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-pisave';
DELETE FROM wp_options WHERE option_name LIKE '%-velikost-pisave';
DELETE FROM wp_options WHERE option_name LIKE '%-naslov';
DELETE FROM wp_options WHERE option_name LIKE '%-besedilo';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-povezave';
DELETE FROM wp_options WHERE option_name LIKE '%-ime-povezave-pogoji';
DELETE FROM wp_options WHERE option_name LIKE '%-povezava-pogoji';
DELETE FROM wp_options WHERE option_name LIKE '%-velikost-povezave';
DELETE FROM wp_options WHERE option_name LIKE '%-besedilo-gumba';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-gumba';
DELETE FROM wp_options WHERE option_name LIKE '%-zaobljenost-gumba';
DELETE FROM wp_options WHERE option_name LIKE '%-barva-gumba-povezave';
DELETE FROM wp_options WHERE option_name LIKE '%-velikost-gumba-povezave';

