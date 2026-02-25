<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cron');
delete_site_option('cron');
delete_option('updraft_oneshotnonce');
delete_site_option('updraft_oneshotnonce');
delete_option('updraft_restore_in_progress');
delete_site_option('updraft_restore_in_progress');
delete_option('updraftplus_product_key');
delete_site_option('updraftplus_product_key');
delete_option('external_updates-updraftplus');
delete_site_option('external_updates-updraftplus');
delete_option('woocommerce_version');
delete_site_option('woocommerce_version');
delete_option('updraftcentral_client_log');
delete_site_option('updraftcentral_client_log');
delete_option('menu_items');
delete_site_option('menu_items');
delete_option('updraftcentral_reporting_reports');
delete_site_option('updraftcentral_reporting_reports');
delete_option('updraftcentral_reporting_sent_reports');
delete_site_option('updraftcentral_reporting_sent_reports');
delete_option('allowedthemes');
delete_site_option('allowedthemes');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('updraftplus-addons_siteid');
delete_site_option('updraftplus-addons_siteid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'updraft_jobdata_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'updraftplus_semaphore_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('updraftplus_migrated_site_domain');
delete_site_option('updraftplus_migrated_site_domain');
delete_option('updraftplus_clone_scheduled_removal');
delete_site_option('updraftplus_clone_scheduled_removal');
delete_option('updraftplus_clone_package_cost');
delete_site_option('updraftplus_clone_package_cost');
delete_option('updraftplus_clone_removal_warning');
delete_site_option('updraftplus_clone_removal_warning');
delete_option('updraftplus_clone_admin_only_login');
delete_site_option('updraftplus_clone_admin_only_login');
delete_option('updraft_interval');
delete_site_option('updraft_interval');
delete_option('updraft_interval_database');
delete_site_option('updraft_interval_database');
delete_option('updraft_interval_increments');
delete_site_option('updraft_interval_increments');
delete_option('updraft_retain');
delete_site_option('updraft_retain');
delete_option('updraft_retain_db');
delete_site_option('updraft_retain_db');
delete_option('updraft_retain_extrarules');
delete_site_option('updraft_retain_extrarules');
delete_option('updraft_encryptionphrase');
delete_site_option('updraft_encryptionphrase');
delete_option('updraft_service');
delete_site_option('updraft_service');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'updraft_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('updraft_auto_updates');
delete_site_option('updraft_auto_updates');
delete_option('updraft_ssl_nossl');
delete_site_option('updraft_ssl_nossl');
delete_option('updraft_log_syslog');
delete_site_option('updraft_log_syslog');
delete_option('updraft_ssl_useservercerts');
delete_site_option('updraft_ssl_useservercerts');
delete_option('updraft_ssl_disableverify');
delete_site_option('updraft_ssl_disableverify');
delete_option('updraft_split_every');
delete_site_option('updraft_split_every');
delete_option('updraft_dir');
delete_site_option('updraft_dir');
delete_option('updraft_report_warningsonly');
delete_site_option('updraft_report_warningsonly');
delete_option('updraft_report_wholebackup');
delete_site_option('updraft_report_wholebackup');
delete_option('updraft_report_dbbackup');
delete_site_option('updraft_report_dbbackup');
delete_option('updraft_autobackup_default');
delete_site_option('updraft_autobackup_default');
delete_option('updraft_delete_local');
delete_site_option('updraft_delete_local');
delete_option('updraft_debug_mode');
delete_site_option('updraft_debug_mode');
delete_option('updraft_extradbs');
delete_site_option('updraft_extradbs');
delete_option('updraft_backupdb_nonwp');
delete_site_option('updraft_backupdb_nonwp');
delete_option('updraft_include_plugins');
delete_site_option('updraft_include_plugins');
delete_option('updraft_include_themes');
delete_site_option('updraft_include_themes');
delete_option('updraft_include_uploads');
delete_site_option('updraft_include_uploads');
delete_option('updraft_include_others');
delete_site_option('updraft_include_others');
delete_option('updraft_include_wpcore');
delete_site_option('updraft_include_wpcore');
delete_option('updraft_include_wpcore_exclude');
delete_site_option('updraft_include_wpcore_exclude');
delete_option('updraft_include_more');
delete_site_option('updraft_include_more');
delete_option('updraft_include_more_path');
delete_site_option('updraft_include_more_path');
delete_option('updraft_include_uploads_exclude');
delete_site_option('updraft_include_uploads_exclude');
delete_option('updraft_include_others_exclude');
delete_site_option('updraft_include_others_exclude');
delete_option('updraft_starttime_files');
delete_site_option('updraft_starttime_files');
delete_option('updraft_starttime_db');
delete_site_option('updraft_starttime_db');
delete_option('updraft_startday_files');
delete_site_option('updraft_startday_files');
delete_option('updraft_startday_db');
delete_site_option('updraft_startday_db');
delete_option('_elementor_global_css');
delete_site_option('_elementor_global_css');
delete_option('elementor-custom-breakpoints-files');
delete_site_option('elementor-custom-breakpoints-files');
delete_option('cctm_data');
delete_site_option('cctm_data');
delete_option('updraft_task_manager_dbversion');
delete_site_option('updraft_task_manager_dbversion');
delete_option('updraft_task_manager_plugins');
delete_site_option('updraft_task_manager_plugins');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('updraft_initial_resume_interval');
delete_site_transient('updraft_initial_resume_interval');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_dashboard_news', '_site_transient_%_dashboard_news' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_count', '_site_transient_%_count' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('udvault_last_config');
delete_site_transient('udvault_last_config');
delete_transient('updraftvault_quota_numeric');
delete_site_transient('updraftvault_quota_numeric');
delete_transient('updraftvault_quota_text');
delete_site_transient('updraftvault_quota_text');
delete_transient('doing_cron');
delete_site_transient('doing_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('updraft_backup');
wp_clear_scheduled_hook('updraft_backup_database');
wp_clear_scheduled_hook('updraftplus_clean_temporary_files');
wp_clear_scheduled_hook('updraft_backup_resume');
wp_clear_scheduled_hook('updraft_backup_increments');
wp_clear_scheduled_hook('updraftplus_temporary_clone_refresh_connection');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'updraftcentral_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'updraftcentral_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'updraftcentral_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'updraftcentral_login_key' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_backup_sizes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_page_template' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_edit_lock' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'featured_media_updraftcentral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'featured_media_updraftcentral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'featured_media_updraftcentral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'featured_media_updraftcentral' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '%_dismiss_dashboard_news' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '%_dismiss_dashboard_news' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '%_dismiss_dashboard_news' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '%_dismiss_dashboard_news' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'uc_allow_auto_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'uc_allow_auto_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'uc_allow_auto_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'uc_allow_auto_login' ) );

