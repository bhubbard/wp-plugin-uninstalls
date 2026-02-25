#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'burst_run_activation'
wp option delete 'burst_activation_time'
wp option delete 'burst_start_onboarding'
wp option delete 'burst_set_defaults'
wp option delete 'burst_php_error_time'
wp option delete 'burst_php_error_count'
wp option delete 'burst_php_error_detected'
wp option delete 'active_sitewide_plugins'
wp option delete 'burst_plugin_path'
wp option delete 'teamupdraft_installation_source_burst-statistics'
wp option delete 'burst_ajax_fallback_active'
wp option delete 'burst_ajax_fallback_active_timestamp'
wp option delete 'burst_track_network_wide'
wp option delete 'burst_options_settings'
wp option delete 'burst_is_multi_domain'
wp option delete 'burst_js_write_error'
wp option delete 'burst_table_size'
wp option delete 'burst_cleanup_uid_visits'
wp option delete 'burst_cleanup_uid'
wp option delete 'burst_missing_tables'
wp option delete 'burst_current_pageviews_milestone'
wp option delete 'burst_rest_api_optimizer_not_writable'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_installed_license'"
wp option delete 'burst_auto_installed'
wp option delete 'burst_auto_installed_license'
wp option delete 'burst_last_cron_hit'
wp option delete 'burst_db_upgrade_fix_missing_session_ids'
wp option delete 'burst_db_upgrade_clean_orphaned_session_ids'
wp option delete 'burst_db_upgrade_bounces'
wp option delete 'burst_db_upgrade_goals_remove_columns'
wp option delete 'burst_db_upgrade_drop_user_agent'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables_browser'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables_browser_version'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables_platform'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables_device'
wp option delete 'burst_db_upgrade_create_lookup_tables'
wp option delete 'burst_db_upgrade_init_lookup_ids'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables'
wp option delete 'burst_db_upgrade_upgrade_lookup_tables_drop_columns'
wp option delete 'burst_db_upgrade_add_page_ids'
wp option delete 'burst_db_upgrade_drop_page_id_column'
wp option delete 'burst_db_upgrade_rename_entire_page_url_column'
wp option delete 'burst_db_upgrade_drop_path_from_parameters_column'
wp option delete 'burst_db_upgrade_column_offset'
wp option delete 'burst_db_upgrade_move_referrers_to_sessions'
wp option delete 'burst_db_upgrade_fix_trailing_slash_on_referrers'
wp option delete 'burst_activation_time_pro'
wp option delete 'burst_completed_onboarding'
wp option delete 'burst_skipped_onboarding'
wp option delete 'burst_geo_ip_file'
wp option delete 'burst_geo_ip_import_error'
wp option delete 'burst_tracking_status'
wp option delete 'burst_share_tokens'
wp option delete 'burst_last_telemetry_send'
wp option delete 'burst_last_report_sent'
wp option delete 'burst_last_db_upgrade_finished_time'
wp option delete 'burst_demo_data_installed'
wp option delete 'burst_last_first_time_visit_update'
wp option delete 'burst_last_known_uids_sync'
wp option delete 'burst_last_bounces_update'
wp option delete 'burst_attempt_database_fix'
wp option delete 'burst_trial_offered'
wp option delete 'burst_cleanup_data_detected_time'
wp option delete 'burst_clean_data'
wp option delete 'burst_last_pageviews_milestone'
wp option delete 'burst_review_notice_shown'
wp option delete 'burst_tasks'
wp option delete 'burst_tasks_permanently_dismissed'
wp option delete 'burst_last_upgrade_started_time'
wp option delete 'burst-current-version'
wp option delete 'burst_db_upgrade_goals_set_conversion_metric'
wp option delete 'burst_db_upgrade_strip_domain_names_from_entire_page_url'
wp option delete 'burst_db_upgrade_empty_referrer_when_current_domain'
wp option delete 'burst_db_upgrade_create_lookup_tables_browser'
wp option delete 'burst_db_upgrade_create_lookup_tables_browser_version'
wp option delete 'burst_db_upgrade_create_lookup_tables_platform'
wp option delete 'burst_db_upgrade_create_lookup_tables_device'
wp option delete 'burst_fix_incorrect_bounces'
wp option delete 'burst_pageviews_to_update'
wp option delete 'burst_db_upgrade_move_reports_to_new_tables'
wp option delete 'burst_first_domain'
wp option delete 'burst_ran_test'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'teamupdraft_installation_source_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skipped_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_onboarding_flushed_rewrite_rules'"
wp option delete 'burst_ecommerce_activated_time'

# Delete Transients
wp transient delete 'burst_redirect_to_settings_page'
wp transient delete 'burst_running_upgrade'
wp transient delete 'media_months'
wp transient delete 'burst_running_delete'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_burst_upgrade_dir_%' OR option_name LIKE '_site_transient_burst_upgrade_dir_%'"
wp transient delete 'burst_upgrade_running'
wp transient delete 'burst_progress_add_page_ids'
wp transient delete 'burst_progress_drop_path_from_parameters_column'
wp transient delete 'burst_progress_move_referrers_to_sessions'
wp transient delete 'burst_use_fallback_licensing_domain'
wp transient delete 'burst_flush_rewrite_rules'
wp transient delete 'burst_running_upgrade_process'
wp transient delete 'burst_review_visitors'
wp transient delete 'burst_plusone_count'
wp transient delete 'burst_base_currency'
wp transient delete 'teamupdraft_random_plugin_indexes'
wp transient delete 'teamupdraft_plugin_download_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugin_info' OR option_name LIKE '_site_transient_%_plugin_info'"

# Clear Cron Jobs
wp cron event delete 'burst_every_hour'
wp cron event delete 'burst_daily'
wp cron event delete 'burst_weekly'
wp cron event delete 'burst_scheduled_task_fix'
wp cron event delete 'burst_weekly_clear_referrers_cron'
wp cron event delete 'burst_weekly_clear_spam_browsers_cron'
wp cron event delete 'burst_clear_test_visit'
wp cron event delete 'burst_every_ten_minutes'
wp cron event delete 'burst_monthly'
wp cron event delete 'burst_upgrade_iteration'
wp cron event delete 'burst_send_email_batch'
wp cron event delete 'burst_recalculate_known_uids_cron'
wp cron event delete 'burst_recalculate_bounces_cron'
wp cron event delete 'burst_recalculate_first_time_visits_cron'
wp cron event delete 'burst_attempt_database_fix'
wp cron event delete 'burst_validate_tasks'
wp cron event delete 'burst_cron_table_upgrade'
wp cron event delete 'burst_every_5_minutes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'burst_page_id_upgraded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'burst_page_id_upgraded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'burst_page_id_upgraded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'burst_page_id_upgraded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'burst_pageviews_timerange'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'burst_pageviews_timerange'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'burst_pageviews_timerange'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'burst_pageviews_timerange'"
