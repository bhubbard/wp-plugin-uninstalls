-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abdp_blocked_bots', 'abdp_excluded_bots', 'abdp_bot_ip_ranges', 'abdp_log_expires_days', 'abdp_blocked_ips', 'abdp_banned_ips', 'abdp_high_traffic_bots', 'abdp_max_requests', 'abdp_time_window', 'abdp_ban_threshold', 'abdp_ban_duration', 'abdp_bot_max_requests');

