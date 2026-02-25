#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mainwp_api_sslVerifyCertificate'
wp option delete 'mainwp_extensions_master_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_APIManAdder'"
wp option delete 'mainwp_extensions_all_activation_cached'
wp option delete 'mainwp_enableLegacyBackupFeature'
wp option delete 'mainwp_options_loadFilesBeforeZip'
wp option delete 'mainwp_maximumFileDescriptorsAuto'
wp option delete 'mainwp_maximumFileDescriptors'
wp option delete 'mainwp_backupsOnServer'
wp option delete 'mainwp_archiveFormat'
wp option delete 'mainwp_primaryBackup'
wp option delete 'mainwp_warm_cache_pages_ttl'
wp option delete 'mainwp_default_manage_clients_per_page'
wp option delete 'mainwp_show_language_updates'
wp option delete 'mainwp_verify_connection_method'
wp option delete 'mainwp_forceUseIPv4'
wp option delete 'mainwp_sslVerifyCertificate'
wp option delete 'mainwp_chunksleepinterval'
wp option delete 'mainwp_chunksitesnumber'
wp option delete 'mainwp_optimize'
wp option delete 'mainwp_check_http_response'
wp option delete 'mainwp_minimumDelay'
wp option delete 'mainwp_minimumIPDelay'
wp option delete 'mainwp_maximumRequests'
wp option delete 'mainwp_maximumIPRequests'
wp option delete 'mainwp_automaticDailyUpdate'
wp option delete 'mainwp_pluginAutomaticDailyUpdate'
wp option delete 'mainwp_themeAutomaticDailyUpdate'
wp option delete 'mainwp_automatic_updates_is_running'
wp option delete 'mainwp_automatic_update_next_run_timestamp'
wp option delete 'mainwp_frequency_AutoUpdate'
wp option delete 'mainwp_transAutomaticDailyUpdate'
wp option delete 'mainwp_automatic_updates_start_lasttime'
wp option delete 'mainwp_delay_autoupdate'
wp option delete 'mainwp_backup_before_upgrade'
wp option delete 'mainwp_automaticUpdate_backupChecks'
wp option delete 'mainwp_backup_before_upgrade_days'
wp option delete 'mainwp_time_AutoUpdate'
wp option delete 'mainwp_dayinweek_AutoUpdate'
wp option delete 'mainwp_dayinmonth_AutoUpdate'
wp option delete 'mainwp_automatic_updates_recent_running'
wp option delete 'mainwp_batch_updates_is_running'
wp option delete 'mainwp_batch_individual_updates_is_running'
wp option delete 'mainwp_batch_updates_start_time'
wp option delete 'mainwp_batch_updates_individual_start_time'
wp option delete 'mainwp_stagingsites_group_id'
wp option delete 'mainwp_disableSitesChecking'
wp option delete 'mainwp_frequencySitesChecking'
wp option delete 'mainwp_ignore_HTTP_response_status'
wp option delete 'mainwp_manage_updates_limit_current_page'
wp option delete 'mainwp_demo_mode_added_ids'
wp option delete 'mainwp_extensions_api_save_login'
wp option delete 'mainwp_updatescheck_mail_update_plugins_new'
wp option delete 'mainwp_updatescheck_mail_update_plugins'
wp option delete 'mainwp_updatescheck_mail_ignore_plugins_new'
wp option delete 'mainwp_updatescheck_mail_ignore_plugins'
wp option delete 'mainwp_updatescheck_mail_update_themes_new'
wp option delete 'mainwp_updatescheck_mail_update_themes'
wp option delete 'mainwp_updatescheck_mail_ignore_themes_new'
wp option delete 'mainwp_updatescheck_mail_ignore_themes'
wp option delete 'mainwp_updatescheck_mail_update_core_new'
wp option delete 'mainwp_updatescheck_mail_update_core'
wp option delete 'mainwp_updatescheck_mail_ignore_core_new'
wp option delete 'mainwp_updatescheck_mail_ignore_core'
wp option delete 'mainwp_extensions_plan_info'
wp option delete 'mainwp_run_quick_setup'
wp option delete 'mainwp_actionlogs'
wp option delete 'mainwp_specific_logs'
wp option delete 'mainwp_logger_check_daily'
wp option delete 'mainwp_actionlogs_enabled_timestamp'
wp option delete 'mainwp_disableSitesHealthMonitoring'
wp option delete 'mainwp_default_sites_per_page'
wp option delete 'mainwp_use_favicon'
wp option delete 'mainwp_plugin_version'
wp option delete 'mainwp_monitoringsites_filter_status'
wp option delete 'mainwp_monitoringsites_filter_group'
wp option delete 'mainwp_monitoringsites_filter_client'
wp option delete 'mainwp_default_monitoring_sites_per_page'
wp option delete 'mainwp_sitehealthThreshold'
wp option delete 'mainwp_settings_notification_emails'
wp option delete 'mainwp_upload_progress'
wp option delete 'mainwp_ajaxposts'
wp option delete 'mainwp_extmenu'
wp option delete 'mainwp_installation_warning_hide_the_notice'
wp option delete 'mainwp_status_saved_values'
wp option delete 'mainwp_last_synced_all_sites'
wp option delete 'mainwp_showhide_events_notice'
wp option delete 'mainwp_first_site_events_notice'
wp option delete 'mainwp_opts_showhide_sections'
wp option delete 'mainwp_opts_saving_status'
wp option delete 'mainwp_not_start_encrypt_keys'
wp option delete 'mainwp_clone_disallowedsites'
wp option delete 'mainwp_numberdays_Outdate_Plugin_Theme'
wp option delete 'mainwp_password_policy_settings'
wp option delete 'mainwp_wp_cron'
wp option delete 'mainwp_individual_uptime_monitoring_schedule_enabled'
wp option delete 'mainwp_timeDailyUpdate'
wp option delete 'mainwp_updatescheck_start_last_timestamp'
wp option delete 'mainwp_frequencyDailyUpdate'
wp option delete 'mainwp_adjust_auto_sync_run_time'
wp option delete 'mainwp_log_wait_lasttime'
wp option delete 'mainwp_daily_digest_plain_text'
wp option delete 'mainwp_updatescheck_is_running'
wp option delete 'mainwp_updatescheck_last_timestamp'
wp option delete 'mainwp_updatescheck_dailydigest_last_timestamp'
wp option delete 'mainwp_dailydigest_last'
wp option delete 'mainwp_updatescheck_ready_sendmail'
wp option delete 'mainwp_updatescheck_individual_digest_websites'
wp option delete 'mainwp_auto_sync_manual_trigger_start_last_timestamp'
wp option delete 'mainwp_updatescheck_last_run'
wp option delete 'mainwp_updatescheck_sites_icon'
wp option delete 'mainwp_license_deactivated_alert_plain_text'
wp option delete 'mainwp_cron_last_ping'
wp option delete 'mainwp_chunkedBackupTasks'
wp option delete 'mainwp_regular_sequence_current_process_pid'
wp option delete 'mainwp_upgradeVersionInfo'
wp option delete 'mainwp_default_manage_insights_events_per_page'
wp option delete 'mainwp_opensslLibLocation'
wp option delete 'mainwp_connect_signature_algo'
wp option delete 'mainwp_keys_is_encrypted'
wp option delete 'mainwp_notice_wp_mail_failed'
wp option delete 'mainwp_enable_guided_tours'
wp option delete 'mainwp_disable_update_confirmations'
wp option delete 'mainwp_setting_demo_mode_enabled'
wp option delete 'mainwp_update_check_version'
wp option delete 'mainwp_maximumSyncRequests'
wp option delete 'mainwp_maximumInstallUpdateRequests'
wp option delete 'mainwp_maximum_uptime_monitoring_requests'
wp option delete 'mainwp_activated'
wp option delete 'mainwp_custom_dashboard_settings'
wp option delete 'mainwp_enable_guided_chatbase'
wp option delete 'mainwp_enable_guided_video'
wp option delete 'mainwp_hide_update_everything'
wp option delete 'mainwp_check_http_response_method'
wp option delete 'mainwp_global_uptime_monitoring_settings'
wp option delete 'mainwp_uptime_monitoring_lasttime_clear_hourly_stats'
wp option delete 'mainwp_uptime_monitor_cleanup_heartbeat_at'
wp option delete 'mainwp_uptimecheck_auto_main_counter_lasttime_started'
wp option delete 'mainwp_uptimecheck_running'
wp option delete 'mainwp_process_uptime_notification_run_status'
wp option delete 'mainwp_cron_licenses_deactivated_alerted'
wp option delete 'mainwp_rest_api_keys'
wp option delete 'mainwp_settings_sync_data'
wp option delete 'mainwp_module_log_settings'
wp option delete 'mainwp_extensions_api_username'
wp option delete 'mainwp_extensions_api_password'
wp option delete 'mainwp_extensions'
wp option delete 'mainwp_backupOnExternalSources'
wp option delete 'mainwp_notificationOnBackupFail'
wp option delete 'mainwp_notificationOnBackupStart'
wp option delete 'mainwp_cloudways_api_account_email'
wp option delete 'mainwp_plesk_api_url'
wp option delete 'mainwp_cpanel_url'
wp option delete 'mainwp_cpanel_account_username'
wp option delete 'mainwp_cpanel_site_path'
wp option delete 'mainwp_kinsta_api_account_email'
wp option delete 'mainwp_kinsta_company_id'
wp option delete 'mainwp_api_backups_update_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'mainwp_enable_cloudways_api'
wp option delete 'mainwp_enable_gridpane_api'
wp option delete 'mainwp_enable_vultr_api'
wp option delete 'mainwp_enable_linode_api'
wp option delete 'mainwp_enable_digitalocean_api'
wp option delete 'mainwp_enable_cpanel_api'
wp option delete 'mainwp_enable_plesk_api'
wp option delete 'mainwp_enable_kinsta_api'
wp option delete 'mainwp_module_cost_tracker_db_version'
wp option delete 'module_cost_tracker_calc_today_next_renewal'
wp option delete 'mainwp_module_log_last_time_auto_archive_logs'
wp option delete 'mainwp_module_log_last_time_auto_purge_logs'
wp option delete 'mainwp_module_log_next_time_auto_purge_logs'
wp option delete 'mainwp_module_logs_updates_dismissed_db_cancelled'
wp option delete 'mainwp_module_logs_updates_dismissed_db_process_status'
wp option delete 'mainwp_module_log_next_time_auto_archive_logs'
wp option delete 'mainwp_module_log_settings_logs_selection_data'
wp option delete 'mainwp_maximumPages'
wp option delete 'mainwp_maximumPosts'
wp option delete 'mainwp_rest_api_consumer_key'
wp option delete 'mainwp_rest_api_consumer_secret'
wp option delete 'mainwp_enable_rest_api'
wp option delete 'mainwp_selected_theme'
wp option delete 'mainwp_manage_updates_limit_sites'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_warm_cache_last_changed_key_prefix_%' OR option_name LIKE '_site_transient_mainwp_warm_cache_last_changed_key_prefix_%'"
wp transient delete 'update_plugins'
wp transient delete 'mainwp_transient_action_logs'
wp transient delete 'mainwp_transient_just_connected_site_id'
wp transient delete 'mainwp_settings_saved'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_fdl_%' OR option_name LIKE '_site_transient_mainwp_fdl_%'"
wp transient delete 'mainwp_transient_deactivated_incomtible_exts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_sync_job_%' OR option_name LIKE '_site_transient_mainwp_sync_job_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_update_job_%' OR option_name LIKE '_site_transient_mainwp_update_job_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_batch_job_%' OR option_name LIKE '_site_transient_mainwp_batch_job_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mainwp_cost_tracker_update_error_%' OR option_name LIKE '_site_transient_mainwp_cost_tracker_update_error_%'"
wp transient delete 'mainwp_module_log_transient_db_logs_size'

# Clear Cron Jobs
wp cron event delete 'mainwp_cronsitehealthcheck_action'
wp cron event delete 'mainwp_cronbackups_action'
wp cron event delete 'mainwp_cronbackups_continue_action'
wp cron event delete 'mainwp_cronstats_action'
wp cron event delete 'mainwp_process_sync_job'
wp cron event delete 'mainwp_process_update_job'
wp cron event delete 'mainwp_process_batch_job'
wp cron event delete 'mainwp_cron_destroy_session_batch'
wp cron event delete 'mainwp_cron_renew_connection_batch'
wp cron event delete 'mainwp_cron_disconnect_batch'
wp cron event delete 'mainwp_disconnect_site_batch'
wp cron event delete 'mainwp_module_log_cron_job_auto_archive'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_sites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_sites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_sites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_sites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_groups'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_groups'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_groups'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_groups'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_clients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_clients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_clients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_clients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_to_only_existing_categories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_to_only_existing_categories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_to_only_existing_categories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_to_only_existing_categories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wporg_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mainwp_edit_post_site_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mainwp_edit_post_site_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mainwp_edit_post_site_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mainwp_edit_post_site_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mainwp_edit_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mainwp_edit_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mainwp_edit_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mainwp_edit_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mainwp_skip_posting'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mainwp_skip_posting'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mainwp_skip_posting'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mainwp_skip_posting'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bulkpost_do_not_del'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bulkpost_do_not_del'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bulkpost_do_not_del'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bulkpost_do_not_del'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
