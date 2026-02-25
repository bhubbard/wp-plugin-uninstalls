-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'bookster_leaderboard_services', 'bookster_leaderboard_agents', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'bookster_performance_report_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_locked';

