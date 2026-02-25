-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcbn_settings', 'wpcbn_localization', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcbn_%';

