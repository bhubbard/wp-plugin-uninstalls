-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdp_divi_builder', 'fdp-divi-builder-notice-succ', 'fdp-divi-builder-notice-fail');

