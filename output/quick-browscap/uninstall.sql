-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('quick_browscap_options', 'quick_browscap_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

