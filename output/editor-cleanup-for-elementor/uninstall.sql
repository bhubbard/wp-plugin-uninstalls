-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdp_elementor', 'fdp-elementor-notice-succ', 'fdp-elementor-notice-fail');

