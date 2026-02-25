-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WP_ASSISTANCE_SETTINGS', 'WP_ASSISTANCE_COMMANDS');

