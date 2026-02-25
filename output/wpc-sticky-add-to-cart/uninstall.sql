-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsb_settings', 'wpcsb_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsb_%';

