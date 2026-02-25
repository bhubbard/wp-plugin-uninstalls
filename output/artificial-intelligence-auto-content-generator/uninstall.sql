-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('momo_acg_openai_settings', 'momo_rssfeed_openai_settings', 'momo_autoblog_openai_settings', 'momo_acg_rssfeed_event_list', 'momo_acg_scw_event_list', 'momo_acg_chatbot_settings', 'momo_acg_cb_trainings_list', 'momo_acg_cb_trainings_settings', 'momo_acgwc_cb_trainings_settings', 'momo_acg_cb_dashboard_contents', 'momo_chatgpt_openai_settings', 'momo_acg_blocks_settings', 'momo_acg_general_settings', 'momo_acg_credit_system_settings', 'woocommerce_myaccount_page_id', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'momo_wsw_api_cache_settings', 'momo_acg_wc_openai_settings', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_acg_credit_plan_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('_acg_credit_plan_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('_acg_credit_plan_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_acg_credit_plan_enabled');

