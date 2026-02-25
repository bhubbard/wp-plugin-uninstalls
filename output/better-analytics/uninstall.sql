-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('better_analytics', 'ba_site_tokens', 'ba_tokens', 'better_analytics_site', 'ba_dashboard_pick', 'ba_int', 'ba_last_error', 'ba_exp_live', 'ba_realtime');
DELETE FROM wp_options WHERE option_name LIKE 'ba_stats_%';

