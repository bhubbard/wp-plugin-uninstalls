-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_settings_id';
DELETE FROM wp_options WHERE option_name LIKE '%_gtm_id';

