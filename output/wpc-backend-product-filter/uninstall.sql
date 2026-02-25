-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcbf_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcbf_%';

