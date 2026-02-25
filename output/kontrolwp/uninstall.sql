-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kontrol_version', 'kontrol_verify_cache', 'kontrol_cs_settings', 'kontrol_cs_settings_updated');
DELETE FROM wp_options WHERE option_name LIKE 'kontrol_module_%';
DELETE FROM wp_options WHERE option_name LIKE 'kontrol_option_%';

