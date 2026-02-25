-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tc_visitors_tracker_timezone', 'tc_visitors_tracker_firstday', 'tc_visitors_tracker_dateformat', 'tc_visitors_tracker_timeformat', 'tc_visitors_tracker_rowlimit', 'tc_visitors_tracker_db_version');

