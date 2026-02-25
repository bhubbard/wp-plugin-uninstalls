-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('widget_gcStatsWidget');
DELETE FROM wp_options WHERE option_name LIKE '%gcStats_waypoints';
DELETE FROM wp_options WHERE option_name LIKE '%gcStats_options';
DELETE FROM wp_options WHERE option_name LIKE '%gcStats_error_log';
DELETE FROM wp_options WHERE option_name LIKE 'gcstats_db_version_%';

