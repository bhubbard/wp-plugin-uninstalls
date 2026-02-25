-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spf_main_settings');
DELETE FROM wp_options WHERE option_name LIKE 'spf_get_media_%';

