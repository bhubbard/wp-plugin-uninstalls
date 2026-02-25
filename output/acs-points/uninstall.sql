-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_acs-points-plugin_settings');
DELETE FROM wp_options WHERE option_name LIKE '%-points';

