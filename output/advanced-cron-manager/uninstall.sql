-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('acm_paused_events', 'acm_schedules', 'acm_server_settings');

