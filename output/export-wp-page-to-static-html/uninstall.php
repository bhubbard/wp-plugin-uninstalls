<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcExportHtmlKeepSameName');
delete_site_option('rcExportHtmlKeepSameName');
delete_option('rcExportHtmlAddContentsToTheHeader');
delete_site_option('rcExportHtmlAddContentsToTheHeader');
delete_option('rcExportHtmlAddContentsToTheFooter');
delete_site_option('rcExportHtmlAddContentsToTheFooter');
delete_option('rcExportHtmlSearchFor');
delete_site_option('rcExportHtmlSearchFor');
delete_option('rcExportHtmlReplaceWith');
delete_site_option('rcExportHtmlReplaceWith');
delete_option('wpptsh_user_roles');
delete_site_option('wpptsh_user_roles');
delete_option('ewptshp_worker_token');
delete_site_option('ewptshp_worker_token');
delete_option('rcExportHtmlCreateIndexOnSinglePage');
delete_site_option('rcExportHtmlCreateIndexOnSinglePage');
delete_option('rc_url_to_replace');
delete_site_option('rc_url_to_replace');
delete_option('rcExportHtmlExcludeUrls');
delete_site_option('rcExportHtmlExcludeUrls');
delete_option('html_export_cookies');
delete_site_option('html_export_cookies');
delete_option('RcDownloadTotalQueue');
delete_site_option('RcDownloadTotalQueue');
delete_option('SetTotalDownloaded');
delete_site_option('SetTotalDownloaded');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%currently_exporting_url' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%currently_exporting_item' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rc_export_html_ftp_connection_status');
delete_site_option('rc_export_html_ftp_connection_status');
delete_option('rc_export_html_ftp_data');
delete_site_option('rc_export_html_ftp_data');
delete_option('rcwph_hidden_files');
delete_site_option('rcwph_hidden_files');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%task' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%pages_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('rcExportHtmlSaveAllAssetsToSpecificDir');
delete_site_option('rcExportHtmlSaveAllAssetsToSpecificDir');
delete_option('_user_roles_can_generate_pdf');
delete_site_option('_user_roles_can_generate_pdf');
delete_option('ewpptsh_review_status');
delete_site_option('ewpptsh_review_status');
delete_option('ewpptsh_next_review_status');
delete_site_option('ewpptsh_next_review_status');
delete_option('ewpptsh_review_status2');
delete_site_option('ewpptsh_review_status2');
delete_option('ewpptsh_next_review_status2');
delete_site_option('ewpptsh_next_review_status2');
delete_option('recorp_ewpp_settings');
delete_site_option('recorp_ewpp_settings');
delete_option('wpptsh_hide_review');
delete_site_option('wpptsh_hide_review');
delete_option('export_wp_page_to_html_activation_check');
delete_site_option('export_wp_page_to_html_activation_check');
delete_option('wpptsh_db_version');
delete_site_option('wpptsh_db_version');
delete_option('wpptsh_notices');
delete_site_option('wpptsh_notices');
delete_option('wpptsh_notices_clicked_data');
delete_site_option('wpptsh_notices_clicked_data');
delete_option('rc_export_pages_as_html_task');
delete_site_option('rc_export_pages_as_html_task');
delete_option('rc_is_export_pages_zip_downloaded');
delete_site_option('rc_is_export_pages_zip_downloaded');
delete_option('rc_single_post_exporting');
delete_site_option('rc_single_post_exporting');
delete_option('rc_single_post_exporting_post_name');
delete_site_option('rc_single_post_exporting_post_name');

// Delete Transients
delete_transient('doing_cron');
delete_site_transient('doing_cron');

// Clear Cron Jobs
wp_clear_scheduled_hook('next_page_export_from_queue');
wp_clear_scheduled_hook('start_export_internal_wp_page_to_html_event');
wp_clear_scheduled_hook('wpptsh_daily_schedules');
wp_clear_scheduled_hook('start_export_custom_url_to_html_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pdf_export_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pdf_export_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pdf_export_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pdf_export_log' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upload_to_ftp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upload_to_ftp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upload_to_ftp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upload_to_ftp_path' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_upload_to_ftp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_upload_to_ftp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_upload_to_ftp' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_upload_to_ftp' ) );

