-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abj404_settings', 'abj404_simulated_db_latency_ms', 'abj404_migrated_to_relative_paths', 'abj404_activation_processed_blogs', 'abj404_activation_in_progress', 'abj404_migration_results', 'abj404_ngram_cache_initialized', 'abj404_ngram_usage_stats', 'abj404_setup_completed', 'abj404_pending_network_activation', 'abj404_network_activation_total', 'wp_dark_mode_enabled', 'dark_mode_for_wp_dashboard_enabled', 'abj404_installed_time', 'abj404_user_feedback', 'abj404_runtime_missing_files', 'abj404_plugin_db_notice', 'abj404_runtime_integrity_checked', 'abj404_view_cache_cleanup_marker', 'abj404_logs_requested_url_column_meta', 'abj404_logs_requested_url_charset');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('abj404_settings_mode', '_abj404_create_redirect', 'admin_color', 'abj404_review_dismissed', 'abj404_review_remind_later', 'abj404_review_step');
DELETE FROM wp_usermeta WHERE meta_key IN ('abj404_settings_mode', '_abj404_create_redirect', 'admin_color', 'abj404_review_dismissed', 'abj404_review_remind_later', 'abj404_review_step');
DELETE FROM wp_termmeta WHERE meta_key IN ('abj404_settings_mode', '_abj404_create_redirect', 'admin_color', 'abj404_review_dismissed', 'abj404_review_remind_later', 'abj404_review_step');
DELETE FROM wp_commentmeta WHERE meta_key IN ('abj404_settings_mode', '_abj404_create_redirect', 'admin_color', 'abj404_review_dismissed', 'abj404_review_remind_later', 'abj404_review_step');

