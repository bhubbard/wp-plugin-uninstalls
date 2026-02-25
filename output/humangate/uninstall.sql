-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('humang_block_search_engines', 'humang_global_refusal', 'humang_enforcement_mode', 'humang_verify_search_engine_bots', 'humang_lockdown_mode', 'humang_friction_enabled', 'humang_friction_burst_pages', 'humang_friction_burst_seconds', 'humang_friction_rate_pages', 'humang_friction_rate_seconds', 'humang_lockdown_require_login', 'humang_disable_robots_txt', 'humang_stats_retention', 'humang_whitelist_ips', 'humang_whitelist_user_agents', 'humang_daily_counters', 'humang_weekly_counters');
DELETE FROM wp_options WHERE option_name LIKE 'humang_refusal_post_types_%';
DELETE FROM wp_options WHERE option_name LIKE 'humang_challenge_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_humangate_refusal_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_humangate_refusal_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_humangate_refusal_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_humangate_refusal_enabled');

