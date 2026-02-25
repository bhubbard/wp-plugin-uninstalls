<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('iwp_client_all_plugins_history');
delete_site_option('iwp_client_all_plugins_history');
delete_option('iwp_client_all_themes_history');
delete_site_option('iwp_client_all_themes_history');
delete_option('iwp_client_wp_version_old');
delete_site_option('iwp_client_wp_version_old');
delete_option('is_save_activity_log');
delete_site_option('is_save_activity_log');
delete_option('iwp_webmasters_redirect_table_version');
delete_site_option('iwp_webmasters_redirect_table_version');
delete_option('wordfence_case');
delete_site_option('wordfence_case');
delete_option('IWP-addons_siteid');
delete_site_option('IWP-addons_siteid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'IWP_jobdata_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('IWP_backup_status');
delete_site_option('IWP_backup_status');
delete_option('IWP_running_backupID');
delete_site_option('IWP_running_backupID');
delete_option('cron');
delete_site_option('cron');
delete_option('IWP_delete_local');
delete_site_option('IWP_delete_local');
delete_option('IWP_include_others_exclude');
delete_site_option('IWP_include_others_exclude');
delete_option('IWP_include_uploads_exclude');
delete_site_option('IWP_include_uploads_exclude');
delete_option('IWP_default_includes');
delete_site_option('IWP_default_includes');
delete_option('IWP_service');
delete_site_option('IWP_service');
delete_option('IWP_retain');
delete_site_option('IWP_retain');
delete_option('IWP_retain_db');
delete_site_option('IWP_retain_db');
delete_option('IWP_default_exclude_tables');
delete_site_option('IWP_default_exclude_tables');
delete_option('IWP_semaphore_fd');
delete_site_option('IWP_semaphore_fd');
delete_option('IWP_locked_fd');
delete_site_option('IWP_locked_fd');
delete_option('IWP_unlocked_fd');
delete_site_option('IWP_unlocked_fd');
delete_option('IWP_semaphore_d');
delete_site_option('IWP_semaphore_d');
delete_option('IWP_unlocked_d');
delete_site_option('IWP_unlocked_d');
delete_option('IWP_locked_d');
delete_site_option('IWP_locked_d');
delete_option('iwp_client_multi_backup_temp_values');
delete_site_option('iwp_client_multi_backup_temp_values');
delete_option('iwp_multical_db_dump_flag');
delete_site_option('iwp_multical_db_dump_flag');
delete_option('site_url');
delete_site_option('site_url');
delete_option('iwp_client_nossl_key');
delete_site_option('iwp_client_nossl_key');
delete_option('iwp_client_public_key');
delete_site_option('iwp_client_public_key');
delete_option('iwp_client_action_message_id');
delete_site_option('iwp_client_action_message_id');
delete_option('iwp_client_notifications');
delete_site_option('iwp_client_notifications');
delete_option('iwp_client_pageview_alerts');
delete_site_option('iwp_client_pageview_alerts');
delete_option('iwp_client_user_hit_count');
delete_site_option('iwp_client_user_hit_count');
delete_option('iwp_client_backup_tasks');
delete_site_option('iwp_client_backup_tasks');
delete_option('iwp_file_list_table_version');
delete_site_option('iwp_file_list_table_version');
delete_option('iwp_client_network_admin_install');
delete_site_option('iwp_client_network_admin_install');
delete_option('iwp_client_activate_key');
delete_site_option('iwp_client_activate_key');
delete_option('bit51_bwps');
delete_site_option('bit51_bwps');
delete_option('iwp_mu_plugin_version');
delete_site_option('iwp_mu_plugin_version');
delete_option('iwp_client_brand');
delete_site_option('iwp_client_brand');
delete_option('iwp_client_maintenace_mode');
delete_site_option('iwp_client_maintenace_mode');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_site_transient_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('iwp_staged_site');
delete_site_option('iwp_staged_site');
delete_option('iwp_mmb_maintenance_mode');
delete_site_option('iwp_mmb_maintenance_mode');
delete_option('iwp_mmb_maintenance_html');
delete_site_option('iwp_mmb_maintenance_html');
delete_option('iwp_backup_table_version');
delete_site_option('iwp_backup_table_version');
delete_option('iwp_backup_processed_iterator_version');
delete_site_option('iwp_backup_processed_iterator_version');
delete_option('iwp_client_replaced_old_hash_backup_files');
delete_site_option('iwp_client_replaced_old_hash_backup_files');
delete_option('iwp_client_forcerefresh');
delete_site_option('iwp_client_forcerefresh');
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('spamshield_ubl_cache');
delete_site_option('spamshield_ubl_cache');
delete_option('iwp_mmb_stats_filter');
delete_site_option('iwp_mmb_stats_filter');

// Delete Transients
delete_transient('IWP_initial_resume_interval');
delete_site_transient('IWP_initial_resume_interval');
delete_transient('iwp_mu_plugin_loader');
delete_site_transient('iwp_mu_plugin_loader');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('IWP_backup_resume');
wp_clear_scheduled_hook('IWP_backup');
wp_clear_scheduled_hook('IWP_backup_database');
wp_clear_scheduled_hook('iwp_client_backup_tasks');
wp_clear_scheduled_hook('iwp_client_notifications');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_action' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_activities_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_activities_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_activities_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_activities_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_actions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_actions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_actions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_actions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'aiowps_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'aiowps_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'aiowps_last_login_time' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'aiowps_last_login_time' ) );

