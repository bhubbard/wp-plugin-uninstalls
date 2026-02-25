-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ipintel_kill_switch', 'ipintel_api_key', 'ipintel_mode', 'ipintel_block_threshold', 'ipintel_last_usage', 'ipintel_whitelist', 'ipintel_blacklist', 'ipintel_request_log', 'ipintel_challenge_threshold', 'ipintel_challenge_theme', 'ipintel_block_theme', 'ipintel_challenge_duration', 'ipintel_footer_badge', 'ipintel_last_usage_time', 'ipintel_plan', 'ipintel_cache_index', 'ipintel_threat_log', 'ipintel_firewall_enabled');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ipintel_cache_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('ipintel_cache_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('ipintel_cache_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ipintel_cache_notice_dismissed');

