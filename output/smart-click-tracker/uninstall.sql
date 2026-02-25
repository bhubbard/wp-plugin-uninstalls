-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smarcltr_options', 'smarcltr_db_version', 'smarcltr_all_trackers', 'smarcltr_dashboard_stats');
DELETE FROM wp_options WHERE option_name LIKE 'smarcltr_tracker_stats_%';

