-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('banned_options', 'banned_ips', 'banned_ips_range', 'banned_hosts', 'banned_referers', 'banned_user_agents', 'banned_exclude_ips', 'banned_message', 'banned_stats');

