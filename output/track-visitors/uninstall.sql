-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpvt_visitors_tracker', 'visitor_tracker_installed', 'visitor_tracker_version');

