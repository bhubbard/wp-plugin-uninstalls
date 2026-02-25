-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stats_for_wpinstalled', 'stats_for_wp_current_version');

