<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('archm_selected_database');
delete_site_option('archm_selected_database');
delete_option('archm_queue_batch_ids');
delete_site_option('archm_queue_batch_ids');
delete_option('archm_archive_orders_count');
delete_site_option('archm_archive_orders_count');
delete_option('arcm_unarchive_cancelled');
delete_site_option('arcm_unarchive_cancelled');
delete_option('arcm_dublicate_order');
delete_site_option('arcm_dublicate_order');
delete_option('archm_last_archive_order');
delete_site_option('archm_last_archive_order');
delete_option('archm_queue_ids');
delete_site_option('archm_queue_ids');
delete_option('archm_background_process_running');
delete_site_option('archm_background_process_running');
delete_option('archm_sqlite_db_file_hash');
delete_site_option('archm_sqlite_db_file_hash');
delete_option('archive_master_google_access_token');
delete_site_option('archive_master_google_access_token');
delete_option('archive_master_google_refresh_token');
delete_site_option('archive_master_google_refresh_token');
delete_option('archm_analytics_sync_enabled');
delete_site_option('archm_analytics_sync_enabled');
delete_option('archived_analytics_version');
delete_site_option('archived_analytics_version');
delete_option('archm_exclude_subscriptions');
delete_site_option('archm_exclude_subscriptions');
delete_option('archm_exclude_memberships');
delete_site_option('archm_exclude_memberships');
delete_option('archm_analytics_version');
delete_site_option('archm_analytics_version');
delete_option('archm_db_switch');
delete_site_option('archm_db_switch');
delete_option('archive_master_google_user_email');
delete_site_option('archive_master_google_user_email');
delete_option('archive_master_google_user_name');
delete_site_option('archive_master_google_user_name');
delete_option('archm_bg_bulk_archive');
delete_site_option('archm_bg_bulk_archive');
delete_option('_archm_background_process_running');
delete_site_option('_archm_background_process_running');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_last_send' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_skipped' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_allow_tracking' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_tracking_notice' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('_archm_archive_user');
delete_site_option('_archm_archive_user');
delete_option('archm_background_process_stop');
delete_site_option('archm_background_process_stop');
delete_option('archm_enable_related_order_metadata_archiving');
delete_site_option('archm_enable_related_order_metadata_archiving');
delete_option('archm_related_order_metadata_selected');
delete_site_option('archm_related_order_metadata_selected');
delete_option('archm_corn_archive_running');
delete_site_option('archm_corn_archive_running');
delete_option('archm_archive_cancelled');
delete_site_option('archm_archive_cancelled');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_batch_1' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('arcm_export_cancelled');
delete_site_option('arcm_export_cancelled');
delete_option('arcm_export_jobs');
delete_site_option('arcm_export_jobs');
delete_option('arcm_bg_export_running');
delete_site_option('arcm_bg_export_running');
delete_option('archm_accoutn_page_archived_oder');
delete_site_option('archm_accoutn_page_archived_oder');
delete_option('archm_flush_rewrite_rules');
delete_site_option('archm_flush_rewrite_rules');
delete_option('arcm_unarchive_jobs');
delete_site_option('arcm_unarchive_jobs');
delete_option('arcm_unarchive_processed_orders');
delete_site_option('arcm_unarchive_processed_orders');
delete_option('arcm_bg_unarchive_running');
delete_site_option('arcm_bg_unarchive_running');
delete_option('osgsw_license_sync');
delete_site_option('osgsw_license_sync');
delete_option('arcm_order_sync_hooks_disabled');
delete_site_option('arcm_order_sync_hooks_disabled');
delete_option('archm_cmysql_db_connection');
delete_site_option('archm_cmysql_db_connection');
delete_option('archm_cmysql_username');
delete_site_option('archm_cmysql_username');
delete_option('archm_cmysql_password');
delete_site_option('archm_cmysql_password');
delete_option('archm_cmysql_dbname');
delete_site_option('archm_cmysql_dbname');
delete_option('archm_cmysql_endpoint');
delete_site_option('archm_cmysql_endpoint');
delete_option('archm_cmysql_port');
delete_site_option('archm_cmysql_port');
delete_option('archm_rds_db_connection');
delete_site_option('archm_rds_db_connection');
delete_option('archm_rds_dbname');
delete_site_option('archm_rds_dbname');
delete_option('archm_rds_endpoint');
delete_site_option('archm_rds_endpoint');
delete_option('archm_rds_username');
delete_site_option('archm_rds_username');
delete_option('archm_rds_port');
delete_site_option('archm_rds_port');
delete_option('archm_rds_password');
delete_site_option('archm_rds_password');
delete_option('archm_archive_statuses');
delete_site_option('archm_archive_statuses');
delete_option('_master_archive_installed');
delete_site_option('_master_archive_installed');
delete_option('_master_archive_version');
delete_site_option('_master_archive_version');
delete_option('archm_archive_range');
delete_site_option('archm_archive_range');
delete_option('archm_archive_range_datetime');
delete_site_option('archm_archive_range_datetime');
delete_option('archm_archive_completed');
delete_site_option('archm_archive_completed');

// Delete Transients
delete_transient('archm_total_archived_orders_count');
delete_site_transient('archm_total_archived_orders_count');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('arcm_cleanup_old_exports');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'is_archived' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'is_archived' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'is_archived' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'is_archived' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'host_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'host_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'host_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'host_post_id' ) );

