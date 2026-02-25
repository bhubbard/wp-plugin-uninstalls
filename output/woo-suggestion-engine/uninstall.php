<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('viwse_background_render_processing');
delete_site_option('viwse_background_render_processing');
delete_option('viwse_background_render_complete');
delete_site_option('viwse_background_render_complete');
delete_option('viwse_params');
delete_site_option('viwse_params');
delete_option('vi_wse_woo_suggestion_engine_version');
delete_site_option('vi_wse_woo_suggestion_engine_version');
delete_option('vi_wse_woocommerce_searched');
delete_site_option('vi_wse_woocommerce_searched');
delete_option('vi_wse_woocommerce_viewed');
delete_site_option('vi_wse_woocommerce_viewed');
delete_option('vi_wse_woocommerce_product_atc');
delete_site_option('vi_wse_woocommerce_product_atc');
delete_option('vi_wse_woo_suggestion_engine_params');
delete_site_option('vi_wse_woo_suggestion_engine_params');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_dismiss_notices' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_wp_reviewed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_start_use' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('villatheme_hide_admin_toolbar');
delete_site_option('villatheme_hide_admin_toolbar');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'villatheme_hide_notices_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_process_lock', '_site_transient_%_process_lock' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('viwse_background_running');
delete_site_transient('viwse_background_running');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_viwse_background_processed_task_%', '_site_transient_viwse_background_processed_task_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('villatheme_call');
delete_site_transient('villatheme_call');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_hide_notices', '_site_transient_%_hide_notices' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_villatheme_hide_notices_%', '_site_transient_villatheme_hide_notices_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('villatheme_notices');
delete_site_transient('villatheme_notices');
delete_transient('villatheme_called');
delete_site_transient('villatheme_called');
delete_transient('villatheme_ads');
delete_site_transient('villatheme_ads');

