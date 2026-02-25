-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('click_tracker', 'update_plugins', 'GoogleAnalyticsPP');

