-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fdp-avada-notice-succ', 'fdp-avada-notice-fail');

