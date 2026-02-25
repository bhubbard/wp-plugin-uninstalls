<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fbv_rest_api_key');
delete_site_option('fbv_rest_api_key');
delete_option('filebird_activation_error');
delete_site_option('filebird_activation_error');
delete_option('filebird_activation_old_domain');
delete_site_option('filebird_activation_old_domain');
delete_option('fbv_old_data_updated_to_v4');
delete_site_option('fbv_old_data_updated_to_v4');
delete_option('fbv_first_folder_notice');
delete_site_option('fbv_first_folder_notice');
delete_option('fbv_is_new_user');
delete_site_option('fbv_is_new_user');
delete_option('njt_fbv_folder_per_user');
delete_site_option('njt_fbv_folder_per_user');
delete_option('pigen_options');
delete_site_option('pigen_options');
delete_option('njt_fbv_allow_svg_upload');
delete_site_option('njt_fbv_allow_svg_upload');
delete_option('fbv_review');
delete_site_option('fbv_review');
delete_option('filebird_saved_downloads');
delete_site_option('filebird_saved_downloads');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'filebird_backup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fbv_folder_colors');
delete_site_option('fbv_folder_colors');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'njt_fb_updated_from_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('njt_fbv_is_search_using_api');
delete_site_option('njt_fbv_is_search_using_api');
delete_option('fbv_settings');
delete_site_option('fbv_settings');
delete_option('fbv_version');
delete_site_option('fbv_version');
delete_option('fbv_first_time_active');
delete_site_option('fbv_first_time_active');

// Clear Cron Jobs
wp_clear_scheduled_hook('filebird_remove_zip_files');
wp_clear_scheduled_hook('filebird_every_12_hours_jobs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'new_fbv_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'new_fbv_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'new_fbv_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'new_fbv_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pll_filter_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pll_filter_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pll_filter_content' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pll_filter_content' ) );

