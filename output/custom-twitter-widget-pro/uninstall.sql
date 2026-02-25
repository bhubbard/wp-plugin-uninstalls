-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ETWP_settings', 'ETWP_twitter_sticky_settings');

