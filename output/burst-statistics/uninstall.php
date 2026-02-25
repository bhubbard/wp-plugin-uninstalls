<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('burst_run_activation');
delete_site_option('burst_run_activation');
delete_option('burst_activation_time');
delete_site_option('burst_activation_time');
delete_option('burst_start_onboarding');
delete_site_option('burst_start_onboarding');
delete_option('burst_set_defaults');
delete_site_option('burst_set_defaults');
delete_option('burst_php_error_time');
delete_site_option('burst_php_error_time');
delete_option('burst_php_error_count');
delete_site_option('burst_php_error_count');
delete_option('burst_php_error_detected');
delete_site_option('burst_php_error_detected');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('burst_plugin_path');
delete_site_option('burst_plugin_path');
delete_option('teamupdraft_installation_source_burst-statistics');
delete_site_option('teamupdraft_installation_source_burst-statistics');
delete_option('burst_ajax_fallback_active');
delete_site_option('burst_ajax_fallback_active');
delete_option('burst_ajax_fallback_active_timestamp');
delete_site_option('burst_ajax_fallback_active_timestamp');
delete_option('burst_track_network_wide');
delete_site_option('burst_track_network_wide');
delete_option('burst_options_settings');
delete_site_option('burst_options_settings');
delete_option('burst_is_multi_domain');
delete_site_option('burst_is_multi_domain');
delete_option('burst_js_write_error');
delete_site_option('burst_js_write_error');
delete_option('burst_table_size');
delete_site_option('burst_table_size');
delete_option('burst_cleanup_uid_visits');
delete_site_option('burst_cleanup_uid_visits');
delete_option('burst_cleanup_uid');
delete_site_option('burst_cleanup_uid');
delete_option('burst_missing_tables');
delete_site_option('burst_missing_tables');
delete_option('burst_current_pageviews_milestone');
delete_site_option('burst_current_pageviews_milestone');
delete_option('burst_rest_api_optimizer_not_writable');
delete_site_option('burst_rest_api_optimizer_not_writable');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%auto_installed_license' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('burst_auto_installed');
delete_site_option('burst_auto_installed');
delete_option('burst_auto_installed_license');
delete_site_option('burst_auto_installed_license');
delete_option('burst_last_cron_hit');
delete_site_option('burst_last_cron_hit');
delete_option('burst_db_upgrade_fix_missing_session_ids');
delete_site_option('burst_db_upgrade_fix_missing_session_ids');
delete_option('burst_db_upgrade_clean_orphaned_session_ids');
delete_site_option('burst_db_upgrade_clean_orphaned_session_ids');
delete_option('burst_db_upgrade_bounces');
delete_site_option('burst_db_upgrade_bounces');
delete_option('burst_db_upgrade_goals_remove_columns');
delete_site_option('burst_db_upgrade_goals_remove_columns');
delete_option('burst_db_upgrade_drop_user_agent');
delete_site_option('burst_db_upgrade_drop_user_agent');
delete_option('burst_db_upgrade_upgrade_lookup_tables_browser');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables_browser');
delete_option('burst_db_upgrade_upgrade_lookup_tables_browser_version');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables_browser_version');
delete_option('burst_db_upgrade_upgrade_lookup_tables_platform');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables_platform');
delete_option('burst_db_upgrade_upgrade_lookup_tables_device');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables_device');
delete_option('burst_db_upgrade_create_lookup_tables');
delete_site_option('burst_db_upgrade_create_lookup_tables');
delete_option('burst_db_upgrade_init_lookup_ids');
delete_site_option('burst_db_upgrade_init_lookup_ids');
delete_option('burst_db_upgrade_upgrade_lookup_tables');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables');
delete_option('burst_db_upgrade_upgrade_lookup_tables_drop_columns');
delete_site_option('burst_db_upgrade_upgrade_lookup_tables_drop_columns');
delete_option('burst_db_upgrade_add_page_ids');
delete_site_option('burst_db_upgrade_add_page_ids');
delete_option('burst_db_upgrade_drop_page_id_column');
delete_site_option('burst_db_upgrade_drop_page_id_column');
delete_option('burst_db_upgrade_rename_entire_page_url_column');
delete_site_option('burst_db_upgrade_rename_entire_page_url_column');
delete_option('burst_db_upgrade_drop_path_from_parameters_column');
delete_site_option('burst_db_upgrade_drop_path_from_parameters_column');
delete_option('burst_db_upgrade_column_offset');
delete_site_option('burst_db_upgrade_column_offset');
delete_option('burst_db_upgrade_move_referrers_to_sessions');
delete_site_option('burst_db_upgrade_move_referrers_to_sessions');
delete_option('burst_db_upgrade_fix_trailing_slash_on_referrers');
delete_site_option('burst_db_upgrade_fix_trailing_slash_on_referrers');
delete_option('burst_activation_time_pro');
delete_site_option('burst_activation_time_pro');
delete_option('burst_completed_onboarding');
delete_site_option('burst_completed_onboarding');
delete_option('burst_skipped_onboarding');
delete_site_option('burst_skipped_onboarding');
delete_option('burst_geo_ip_file');
delete_site_option('burst_geo_ip_file');
delete_option('burst_geo_ip_import_error');
delete_site_option('burst_geo_ip_import_error');
delete_option('burst_tracking_status');
delete_site_option('burst_tracking_status');
delete_option('burst_share_tokens');
delete_site_option('burst_share_tokens');
delete_option('burst_last_telemetry_send');
delete_site_option('burst_last_telemetry_send');
delete_option('burst_last_report_sent');
delete_site_option('burst_last_report_sent');
delete_option('burst_last_db_upgrade_finished_time');
delete_site_option('burst_last_db_upgrade_finished_time');
delete_option('burst_demo_data_installed');
delete_site_option('burst_demo_data_installed');
delete_option('burst_last_first_time_visit_update');
delete_site_option('burst_last_first_time_visit_update');
delete_option('burst_last_known_uids_sync');
delete_site_option('burst_last_known_uids_sync');
delete_option('burst_last_bounces_update');
delete_site_option('burst_last_bounces_update');
delete_option('burst_attempt_database_fix');
delete_site_option('burst_attempt_database_fix');
delete_option('burst_trial_offered');
delete_site_option('burst_trial_offered');
delete_option('burst_cleanup_data_detected_time');
delete_site_option('burst_cleanup_data_detected_time');
delete_option('burst_clean_data');
delete_site_option('burst_clean_data');
delete_option('burst_last_pageviews_milestone');
delete_site_option('burst_last_pageviews_milestone');
delete_option('burst_review_notice_shown');
delete_site_option('burst_review_notice_shown');
delete_option('burst_tasks');
delete_site_option('burst_tasks');
delete_option('burst_tasks_permanently_dismissed');
delete_site_option('burst_tasks_permanently_dismissed');
delete_option('burst_last_upgrade_started_time');
delete_site_option('burst_last_upgrade_started_time');
delete_option('burst-current-version');
delete_site_option('burst-current-version');
delete_option('burst_db_upgrade_goals_set_conversion_metric');
delete_site_option('burst_db_upgrade_goals_set_conversion_metric');
delete_option('burst_db_upgrade_strip_domain_names_from_entire_page_url');
delete_site_option('burst_db_upgrade_strip_domain_names_from_entire_page_url');
delete_option('burst_db_upgrade_empty_referrer_when_current_domain');
delete_site_option('burst_db_upgrade_empty_referrer_when_current_domain');
delete_option('burst_db_upgrade_create_lookup_tables_browser');
delete_site_option('burst_db_upgrade_create_lookup_tables_browser');
delete_option('burst_db_upgrade_create_lookup_tables_browser_version');
delete_site_option('burst_db_upgrade_create_lookup_tables_browser_version');
delete_option('burst_db_upgrade_create_lookup_tables_platform');
delete_site_option('burst_db_upgrade_create_lookup_tables_platform');
delete_option('burst_db_upgrade_create_lookup_tables_device');
delete_site_option('burst_db_upgrade_create_lookup_tables_device');
delete_option('burst_fix_incorrect_bounces');
delete_site_option('burst_fix_incorrect_bounces');
delete_option('burst_pageviews_to_update');
delete_site_option('burst_pageviews_to_update');
delete_option('burst_db_upgrade_move_reports_to_new_tables');
delete_site_option('burst_db_upgrade_move_reports_to_new_tables');
delete_option('burst_first_domain');
delete_site_option('burst_first_domain');
delete_option('burst_ran_test');
delete_site_option('burst_ran_test');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'teamupdraft_installation_source_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_skipped_onboarding' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_start_onboarding' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_completed_onboarding' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_onboarding_flushed_rewrite_rules' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('burst_ecommerce_activated_time');
delete_site_option('burst_ecommerce_activated_time');

// Delete Transients
delete_transient('burst_redirect_to_settings_page');
delete_site_transient('burst_redirect_to_settings_page');
delete_transient('burst_running_upgrade');
delete_site_transient('burst_running_upgrade');
delete_transient('media_months');
delete_site_transient('media_months');
delete_transient('burst_running_delete');
delete_site_transient('burst_running_delete');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_burst_upgrade_dir_%', '_site_transient_burst_upgrade_dir_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('burst_upgrade_running');
delete_site_transient('burst_upgrade_running');
delete_transient('burst_progress_add_page_ids');
delete_site_transient('burst_progress_add_page_ids');
delete_transient('burst_progress_drop_path_from_parameters_column');
delete_site_transient('burst_progress_drop_path_from_parameters_column');
delete_transient('burst_progress_move_referrers_to_sessions');
delete_site_transient('burst_progress_move_referrers_to_sessions');
delete_transient('burst_use_fallback_licensing_domain');
delete_site_transient('burst_use_fallback_licensing_domain');
delete_transient('burst_flush_rewrite_rules');
delete_site_transient('burst_flush_rewrite_rules');
delete_transient('burst_running_upgrade_process');
delete_site_transient('burst_running_upgrade_process');
delete_transient('burst_review_visitors');
delete_site_transient('burst_review_visitors');
delete_transient('burst_plusone_count');
delete_site_transient('burst_plusone_count');
delete_transient('burst_base_currency');
delete_site_transient('burst_base_currency');
delete_transient('teamupdraft_random_plugin_indexes');
delete_site_transient('teamupdraft_random_plugin_indexes');
delete_transient('teamupdraft_plugin_download_active');
delete_site_transient('teamupdraft_plugin_download_active');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_plugin_info', '_site_transient_%_plugin_info' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('burst_every_hour');
wp_clear_scheduled_hook('burst_daily');
wp_clear_scheduled_hook('burst_weekly');
wp_clear_scheduled_hook('burst_scheduled_task_fix');
wp_clear_scheduled_hook('burst_weekly_clear_referrers_cron');
wp_clear_scheduled_hook('burst_weekly_clear_spam_browsers_cron');
wp_clear_scheduled_hook('burst_clear_test_visit');
wp_clear_scheduled_hook('burst_every_ten_minutes');
wp_clear_scheduled_hook('burst_monthly');
wp_clear_scheduled_hook('burst_upgrade_iteration');
wp_clear_scheduled_hook('burst_send_email_batch');
wp_clear_scheduled_hook('burst_recalculate_known_uids_cron');
wp_clear_scheduled_hook('burst_recalculate_bounces_cron');
wp_clear_scheduled_hook('burst_recalculate_first_time_visits_cron');
wp_clear_scheduled_hook('burst_attempt_database_fix');
wp_clear_scheduled_hook('burst_validate_tasks');
wp_clear_scheduled_hook('burst_cron_table_upgrade');
wp_clear_scheduled_hook('burst_every_5_minutes');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'burst_page_id_upgraded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'burst_page_id_upgraded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'burst_page_id_upgraded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'burst_page_id_upgraded' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'burst_pageviews_timerange' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'burst_pageviews_timerange' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'burst_pageviews_timerange' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'burst_pageviews_timerange' ) );

