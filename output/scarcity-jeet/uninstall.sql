-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsj_settings', 'wpscarcityjeet_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_licensed';

