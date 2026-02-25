<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocm_action_start_backup');
delete_site_option('ocm_action_start_backup');
delete_option('ocm_action_start_restore');
delete_site_option('ocm_action_start_restore');
delete_option('ocm_presigned_urls');
delete_site_option('ocm_presigned_urls');
delete_option('ocm_is_stopped');
delete_site_option('ocm_is_stopped');
delete_option('ocm_upload_auto_try_nb_db');
delete_site_option('ocm_upload_auto_try_nb_db');
delete_option('ocm_upload_auto_try_nb_themes');
delete_site_option('ocm_upload_auto_try_nb_themes');
delete_option('ocm_upload_auto_try_nb_plugins');
delete_site_option('ocm_upload_auto_try_nb_plugins');
delete_option('ocm_upload_auto_try_nb_uploads');
delete_site_option('ocm_upload_auto_try_nb_uploads');
delete_option('ocm_bucket_key');
delete_site_option('ocm_bucket_key');
delete_option('ocm_download_auto_try_nb_db');
delete_site_option('ocm_download_auto_try_nb_db');
delete_option('ocm_download_auto_try_nb_themes');
delete_site_option('ocm_download_auto_try_nb_themes');
delete_option('ocm_download_auto_try_nb_plugins');
delete_site_option('ocm_download_auto_try_nb_plugins');
delete_option('ocm_download_auto_try_nb_uploads');
delete_site_option('ocm_download_auto_try_nb_uploads');
delete_option('ocm_user_email');
delete_site_option('ocm_user_email');
delete_option('ocm_excluded_folders');
delete_site_option('ocm_excluded_folders');
delete_option('ocm_skipped_folders');
delete_site_option('ocm_skipped_folders');
delete_option('ocm_eexcluded_folders');
delete_site_option('ocm_eexcluded_folders');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_restore_download_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_restore_decrypt_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_restore_extract_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_restore_child_delete_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ocm_payment_status');
delete_site_option('ocm_payment_status');
delete_option('ocm_backup_compress_retry_db');
delete_site_option('ocm_backup_compress_retry_db');
delete_option('ocm_backup_upload_retry_db');
delete_site_option('ocm_backup_upload_retry_db');
delete_option('ocm_backup_encrypt_retry_db');
delete_site_option('ocm_backup_encrypt_retry_db');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_backup_compress_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_backup_encrypt_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'ocm_backup_upload_retry_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('ocm_upload_file');
delete_site_option('ocm_upload_file');
delete_option('restore_steps');
delete_site_option('restore_steps');
delete_option('backup_steps');
delete_site_option('backup_steps');
delete_option('wp_force_deactivated_plugins');
delete_site_option('wp_force_deactivated_plugins');
delete_option('ocm_restore_download_retry_db');
delete_site_option('ocm_restore_download_retry_db');
delete_option('ocm_restore_download_retry_themes');
delete_site_option('ocm_restore_download_retry_themes');
delete_option('ocm_restore_download_retry_plugins');
delete_site_option('ocm_restore_download_retry_plugins');
delete_option('ocm_restore_download_retry_uploads');
delete_site_option('ocm_restore_download_retry_uploads');
delete_option('ocm_restore_decrypt_retry_db');
delete_site_option('ocm_restore_decrypt_retry_db');
delete_option('ocm_restore_decrypt_retry_themes');
delete_site_option('ocm_restore_decrypt_retry_themes');
delete_option('ocm_restore_decrypt_retry_plugins');
delete_site_option('ocm_restore_decrypt_retry_plugins');
delete_option('ocm_restore_decrypt_retry_uploads');
delete_site_option('ocm_restore_decrypt_retry_uploads');
delete_option('ocm_restore_extract_retry_db');
delete_site_option('ocm_restore_extract_retry_db');
delete_option('ocm_restore_extract_retry_themes');
delete_site_option('ocm_restore_extract_retry_themes');
delete_option('ocm_restore_extract_retry_plugins');
delete_site_option('ocm_restore_extract_retry_plugins');
delete_option('ocm_restore_extract_retry_uploads');
delete_site_option('ocm_restore_extract_retry_uploads');
delete_option('ocm_restore_child_delete_retry_db');
delete_site_option('ocm_restore_child_delete_retry_db');
delete_option('ocm_restore_child_delete_retry_themes');
delete_site_option('ocm_restore_child_delete_retry_themes');
delete_option('ocm_restore_child_delete_retry_plugins');
delete_site_option('ocm_restore_child_delete_retry_plugins');
delete_option('ocm_restore_child_delete_retry_uploads');
delete_site_option('ocm_restore_child_delete_retry_uploads');
delete_option('ocm_backup_compress_retry_themes');
delete_site_option('ocm_backup_compress_retry_themes');
delete_option('ocm_backup_compress_retry_plugins');
delete_site_option('ocm_backup_compress_retry_plugins');
delete_option('ocm_backup_compress_retry_uploads');
delete_site_option('ocm_backup_compress_retry_uploads');
delete_option('ocm_backup_encrypt_retry_themes');
delete_site_option('ocm_backup_encrypt_retry_themes');
delete_option('ocm_backup_encrypt_retry_plugins');
delete_site_option('ocm_backup_encrypt_retry_plugins');
delete_option('ocm_backup_encrypt_retry_uploads');
delete_site_option('ocm_backup_encrypt_retry_uploads');
delete_option('ocm_backup_upload_retry_themes');
delete_site_option('ocm_backup_upload_retry_themes');
delete_option('ocm_backup_upload_retry_plugins');
delete_site_option('ocm_backup_upload_retry_plugins');
delete_option('ocm_backup_upload_retry_uploads');
delete_site_option('ocm_backup_upload_retry_uploads');
delete_option('ocm_user_password');
delete_site_option('ocm_user_password');
delete_option('ocm_log_download');
delete_site_option('ocm_log_download');
delete_option('ocm_log_url');
delete_site_option('ocm_log_url');
delete_option('ocm_s3_bucket');
delete_site_option('ocm_s3_bucket');
delete_option('ocm_s3_region');
delete_site_option('ocm_s3_region');
delete_option('ocm_s3_access_key');
delete_site_option('ocm_s3_access_key');
delete_option('ocm_s3_secret_key');
delete_site_option('ocm_s3_secret_key');
delete_option('ocm_backup_id');
delete_site_option('ocm_backup_id');
delete_option('ocm_backup_password');
delete_site_option('ocm_backup_password');
delete_option('ocm_backup_completed_steps');
delete_site_option('ocm_backup_completed_steps');
delete_option('ocm_restore_completed_steps');
delete_site_option('ocm_restore_completed_steps');
delete_option('ocm_maintenance_mode');
delete_site_option('ocm_maintenance_mode');
delete_option('wp_ocm_background_backup_status');
delete_site_option('wp_ocm_background_backup_status');
delete_option('wp_ocm_background_restore_status');
delete_site_option('wp_ocm_background_restore_status');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('wp_ocm_background_backup_process_lock');
delete_site_transient('wp_ocm_background_backup_process_lock');
delete_transient('wp_ocm_background_restore_process_lock');
delete_site_transient('wp_ocm_background_restore_process_lock');

