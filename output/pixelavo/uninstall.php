<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pixelavo_diagnostic_data_agreed');
delete_site_option('pixelavo_diagnostic_data_agreed');
delete_option('pixelavo_diagnostic_data_notice');
delete_site_option('pixelavo_diagnostic_data_notice');
delete_option('pixelavo_delete_data_fetch_cache');
delete_site_option('pixelavo_delete_data_fetch_cache');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop_bar' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop_popup' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop_redirect' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_htiop_timer' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('pixelavo_settings');
delete_site_option('pixelavo_settings');
delete_option('pixelavo_ai_db_version');
delete_site_option('pixelavo_ai_db_version');
delete_option('pixelavo_openssl_notice_dismissed');
delete_site_option('pixelavo_openssl_notice_dismissed');
delete_option('pixelavo_wp_keys_notice_dismissed');
delete_site_option('pixelavo_wp_keys_notice_dismissed');
delete_option('pixelavo_events');
delete_site_option('pixelavo_events');
delete_option('pixelavo_edd_events');
delete_site_option('pixelavo_edd_events');
delete_option('pixelavo_download_files');
delete_site_option('pixelavo_download_files');
delete_option('pixelavo_time_on_page');
delete_site_option('pixelavo_time_on_page');
delete_option('pixelavo_page_scroll');
delete_site_option('pixelavo_page_scroll');
delete_option('pixelavo_form_submission');
delete_site_option('pixelavo_form_submission');
delete_option('pixelavo_other_events');
delete_site_option('pixelavo_other_events');
delete_option('pixelavo_wc_view_content');
delete_site_option('pixelavo_wc_view_content');
delete_option('pixelavo_wc_purchase');
delete_site_option('pixelavo_wc_purchase');
delete_option('pixelavo_do_activation_redirect');
delete_site_option('pixelavo_do_activation_redirect');
delete_option('pixelavo_installed');
delete_site_option('pixelavo_installed');
delete_option('force_update_pixelavo_notice_info');
delete_site_option('force_update_pixelavo_notice_info');
delete_option('pixelavo_pixels_list');
delete_site_option('pixelavo_pixels_list');
delete_option('pixelavo_custom_events');
delete_site_option('pixelavo_custom_events');
delete_option('pixelavo_other_events_setting_modify');
delete_site_option('pixelavo_other_events_setting_modify');
delete_option('pixelavo_setting_modify_124');
delete_site_option('pixelavo_setting_modify_124');
delete_option('pixelavo_edd_purchase');
delete_site_option('pixelavo_edd_purchase');
delete_option('pixelavo_edd_view_content');
delete_site_option('pixelavo_edd_view_content');

// Delete Transients
delete_transient('pixelavo-notice-id-pixelavo-diagnostic-notice');
delete_site_transient('pixelavo-notice-id-pixelavo-diagnostic-notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_htiop_data', '_site_transient_%_htiop_data' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('pixelavo_ai_tables_checked');
delete_site_transient('pixelavo_ai_tables_checked');
delete_transient('pixelavo_notice_info');
delete_site_transient('pixelavo_notice_info');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pixelavo_user_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pixelavo_user_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pixelavo_user_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pixelavo_user_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'pixelavo_user_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'pixelavo_user_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'pixelavo_user_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'pixelavo_user_signup' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_product_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_product_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_product_condition' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_product_condition' ) );

