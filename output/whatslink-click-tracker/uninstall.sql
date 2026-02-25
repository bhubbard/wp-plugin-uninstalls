-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('whatslink_click_tracker_show_badge_counter', 'whatslink_click_tracker_db_version');

