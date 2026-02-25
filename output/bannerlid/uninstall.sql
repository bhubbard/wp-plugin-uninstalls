-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bannerlid-collect-stats', 'bannerlid-enable-flash', 'bannerlid-version');

