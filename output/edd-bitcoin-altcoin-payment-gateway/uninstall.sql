-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('edd_settings', 'ebapg_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_cart';
DELETE FROM wp_options WHERE option_name LIKE '%_log';
DELETE FROM wp_options WHERE option_name LIKE '%_ct';

