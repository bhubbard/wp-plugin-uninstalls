-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_habilitado';
DELETE FROM wp_options WHERE option_name LIKE '%_entornoact';
DELETE FROM wp_options WHERE option_name LIKE '%_titulo';
DELETE FROM wp_options WHERE option_name LIKE '%_urltest';
DELETE FROM wp_options WHERE option_name LIKE '%_urlreal';
DELETE FROM wp_options WHERE option_name LIKE '%_nombrecomercio';
DELETE FROM wp_options WHERE option_name LIKE '%_idfuc';
DELETE FROM wp_options WHERE option_name LIKE '%_idioma';
DELETE FROM wp_options WHERE option_name LIKE '%_terminal';
DELETE FROM wp_options WHERE option_name LIKE '%_encriptkey';
DELETE FROM wp_options WHERE option_name LIKE '%_moneda';
DELETE FROM wp_options WHERE option_name LIKE '%_urlok';
DELETE FROM wp_options WHERE option_name LIKE '%_urlko';

