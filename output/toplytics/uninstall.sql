-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('toplytics_oauth_token', 'toplytics_oauth_secret', 'toplytics_auth_token', 'toplytics_account_id', 'toplytics_cache_timeout', 'toplytics_results', 'toplytics_result_today', 'toplytics_result_week', 'toplytics_result_month', 'toplytics_auth_status', 'toplytics_last_update', 'toplytics_settings', 'toplytics_use_ga4', 'toplytics_gapi_errors_count', 'toplytics_db_version', 'toplytics_db_updates_applied', 'toplytics_results_ranges', 'widget_toplytics-widget', 'toplytics_private_auth_config', 'toplytics_google_token', 'toplytics_profile_data', 'toplytics_property_id', 'toplytics_auth_config', 'toplytics_auth_code', 'toplytics_last_update_status', 'toplytics_result_realtime', 'toplytics_result_categories', 'toplytics_result_top_posts', 'toplytics_auth_type', 'toplytics_oauth2_remote_token', 'rewrite_rules', 'toplyticsMessage');
DELETE FROM wp_options WHERE option_name LIKE 'message_%';

