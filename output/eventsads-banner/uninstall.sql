-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%plugin_attivo';
DELETE FROM wp_options WHERE option_name LIKE '%data_attivazione';
DELETE FROM wp_options WHERE option_name LIKE '%data_installazione';
DELETE FROM wp_options WHERE option_name LIKE '%versione';
DELETE FROM wp_options WHERE option_name LIKE '%problemini';

