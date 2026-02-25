-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adb_homepage_planner_page_id', 'adb_homepage_planner_time');

