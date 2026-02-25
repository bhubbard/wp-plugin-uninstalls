-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('endurance_user', 'sumome_site_id', 'sumome_hide_dashboard_overlay', 'sumome_initial_wpdashboard_load_time');

