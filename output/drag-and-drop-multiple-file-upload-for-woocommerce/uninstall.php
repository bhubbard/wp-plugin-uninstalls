<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcf_show_in_dnd_file_uploader_in');
delete_site_option('wcf_show_in_dnd_file_uploader_in');
delete_option('wcf_show_in_dnd_file_upload_after');
delete_site_option('wcf_show_in_dnd_file_upload_after');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_separator%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_browse_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_server_limit%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_files_too_large%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_invalid_file%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_min_file%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_max_number_of_files%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_error_max_file%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_of_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_deleting_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wcf_drag_n_drop_remove_text%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wcf_drag_n_drop_error_failed_to_upload');
delete_site_option('wcf_drag_n_drop_error_failed_to_upload');
delete_option('wcf_drag_n_drop_support_file_upload');
delete_site_option('wcf_drag_n_drop_support_file_upload');
delete_option('wcf_drag_n_drop_error_invalid_file');
delete_site_option('wcf_drag_n_drop_error_invalid_file');
delete_option('wcf_drag_n_drop_error_files_too_large');
delete_site_option('wcf_drag_n_drop_error_files_too_large');
delete_option('wcf_drag_n_drop_disable');
delete_site_option('wcf_drag_n_drop_disable');
delete_option('wcf_drag_n_drop_field_name');
delete_site_option('wcf_drag_n_drop_field_name');
delete_option('wcf_drag_n_drop_file_size_limit');
delete_site_option('wcf_drag_n_drop_file_size_limit');
delete_option('wcf_drag_n_drop_max_file_upload');
delete_site_option('wcf_drag_n_drop_max_file_upload');
delete_option('wcf_drag_n_drop_min_file_upload');
delete_site_option('wcf_drag_n_drop_min_file_upload');
delete_option('wcf_drag_n_drop_default_label');
delete_site_option('wcf_drag_n_drop_default_label');
delete_option('wcf_drag_n_drop_required');
delete_site_option('wcf_drag_n_drop_required');
delete_option('wcf_drag_n_drop_error_min_file');
delete_site_option('wcf_drag_n_drop_error_min_file');
delete_option('show_in_dnd_file_uploader_in');
delete_site_option('show_in_dnd_file_uploader_in');
delete_option('show_in_dnd_file_upload_after');
delete_site_option('show_in_dnd_file_upload_after');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_dnd_wc_daily_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'label_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'label_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'label_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'label_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'enable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'enable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'enable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'enable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'disable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'disable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'disable_dnd_file_upload_wc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'disable_dnd_file_upload_wc' ) );

