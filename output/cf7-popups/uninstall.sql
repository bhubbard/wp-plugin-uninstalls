-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dismissed-notice-upgrade-code-cf7pp-cww');
DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%';

