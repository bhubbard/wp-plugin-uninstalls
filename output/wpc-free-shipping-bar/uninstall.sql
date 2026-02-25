-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcfb_settings', 'wpcfb_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcfb_%';

