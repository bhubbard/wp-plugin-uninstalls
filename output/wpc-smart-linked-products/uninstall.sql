-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcsl_settings', 'wpcsl_us', 'wpcsl_cs', 'wpclever_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'wpcsl_%';

