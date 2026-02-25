<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
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
delete_option('gswps_dummy_shortcode_data_created');
delete_site_option('gswps_dummy_shortcode_data_created');
delete_option('gswps_dismiss_demo_data_notice');
delete_site_option('gswps_dismiss_demo_data_notice');
delete_option('gswps_install_demo_shortcodes_initially');
delete_site_option('gswps_install_demo_shortcodes_initially');
delete_option('gs_woops_slider_version');
delete_site_option('gs_woops_slider_version');
delete_option('gs_woo_slider_shortcode_prefs');
delete_site_option('gs_woo_slider_shortcode_prefs');
delete_option('GSWPS_active_time');
delete_site_option('GSWPS_active_time');
delete_option('GSWPS_maybe_later');
delete_site_option('GSWPS_maybe_later');
delete_option('gsadmin_maybe_later');
delete_site_option('gsadmin_maybe_later');
delete_option('gswps_activation_redirect');
delete_site_option('gswps_activation_redirect');
delete_option('review_dismiss');
delete_site_option('review_dismiss');
delete_option('gsadmin_active_time');
delete_site_option('gsadmin_active_time');
delete_option('gswps_dummy_woops_data_created');
delete_site_option('gswps_dummy_woops_data_created');
delete_option('woocommerce_default_catalog_orderby');
delete_site_option('woocommerce_default_catalog_orderby');
delete_option('GS_woo_Slider_plugin_permalinks_flushed');
delete_site_option('GS_woo_Slider_plugin_permalinks_flushed');

// Delete Transients
delete_transient('gswps_dummy_shortcode_data_creating');
delete_site_transient('gswps_dummy_shortcode_data_creating');
delete_transient('gsplugins-pro-plugins');
delete_site_transient('gsplugins-pro-plugins');
delete_transient('gsplugins_free_plugins');
delete_site_transient('gsplugins_free_plugins');

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gswps_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gswps_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gswps_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gswps_ignore_notice279' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gs_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gs_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gs_template_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gs_template_type' ) );

