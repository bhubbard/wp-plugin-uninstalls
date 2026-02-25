-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aiil_settings');
DELETE FROM wp_options WHERE option_name LIKE 'aiil_available_links_%';

