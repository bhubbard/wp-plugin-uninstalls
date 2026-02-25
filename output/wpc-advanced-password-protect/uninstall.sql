-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcpp_rules', 'wpcpp_settings', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcpp_%';

