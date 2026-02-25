-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nowpost_pudo_settings');
DELETE FROM wp_options WHERE option_name LIKE 'nowpost_processing_%';

