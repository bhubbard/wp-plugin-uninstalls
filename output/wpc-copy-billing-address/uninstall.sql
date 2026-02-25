-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpccb_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpccb_%';

