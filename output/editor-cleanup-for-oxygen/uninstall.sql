-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdp-oxygen-notice-succ', 'fdp-oxygen-notice-fail');

