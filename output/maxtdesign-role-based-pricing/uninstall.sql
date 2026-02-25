-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('maxtdesign_rbp_cache_logs', 'maxtdesign_rbp_last_cache_clear', 'maxtdesign_rbp_db_logs', 'maxtdesign_rbp_query_logs', 'maxtdesign_rbp_cache_method', 'maxtdesign_rbp_version', 'maxtdesign_rbp_last_performance_cleanup', 'maxtdesign_rbp_hook_stats', 'maxtdesign_rbp_activation_notice');

