-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('divewp_db_version', 'divewp_version', 'divewp_feedback_settings', 'divewp_feedback_dismissed', 'divewp_install_time', 'update_plugins', 'divewp_feedback_reminder', 'doing_cron', 'divewp_benchmark_time_limit', 'divewp_benchmark_session', 'divewp_benchmark_enabled_tests', 'divewp_concurrency_worker_token', 'divewp_last_event_time');
DELETE FROM wp_options WHERE option_name LIKE 'divewp_timing_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_test_config_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_evaluation_running_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_db_test_rate_limit_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_hosting_evaluation_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_benchmark_concurrency_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_benchmark_database_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_benchmark_performance_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_benchmark_resources_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_resource_test_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_plugin_icon_%';
DELETE FROM wp_options WHERE option_name LIKE 'divewp_admin_login_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('meta_description', 'divewp_last_login', 'divewp_user_settings', 'divewp_dismissed_notices', 'divewp_seo_data', 'divewp_page_insights');
DELETE FROM wp_usermeta WHERE meta_key IN ('meta_description', 'divewp_last_login', 'divewp_user_settings', 'divewp_dismissed_notices', 'divewp_seo_data', 'divewp_page_insights');
DELETE FROM wp_termmeta WHERE meta_key IN ('meta_description', 'divewp_last_login', 'divewp_user_settings', 'divewp_dismissed_notices', 'divewp_seo_data', 'divewp_page_insights');
DELETE FROM wp_commentmeta WHERE meta_key IN ('meta_description', 'divewp_last_login', 'divewp_user_settings', 'divewp_dismissed_notices', 'divewp_seo_data', 'divewp_page_insights');

