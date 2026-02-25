-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hcsh_weekly_hours', 'hcsh_manual_close', 'hcsh_mode', 'hcsh_open_time', 'hcsh_close_time', 'hcsh_closed_message');

