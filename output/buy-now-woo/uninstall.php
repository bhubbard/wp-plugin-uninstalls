<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buy_now_woo_customize');
delete_site_option('buy_now_woo_customize');
delete_option('buy_now_woo_button_color');
delete_site_option('buy_now_woo_button_color');
delete_option('buy_now_woo_button_bgcolor');
delete_site_option('buy_now_woo_button_bgcolor');
delete_option('buy_now_woo_button_border_color');
delete_site_option('buy_now_woo_button_border_color');
delete_option('buy_now_woo_button_hover_color');
delete_site_option('buy_now_woo_button_hover_color');
delete_option('buy_now_woo_button_hover_bgcolor');
delete_site_option('buy_now_woo_button_hover_bgcolor');
delete_option('buy_now_woo_button_hover_border_color');
delete_site_option('buy_now_woo_button_hover_border_color');
delete_option('buy_now_woo_button_padding');
delete_site_option('buy_now_woo_button_padding');
delete_option('buy_now_woo_button_margin');
delete_site_option('buy_now_woo_button_margin');
delete_option('buy_now_woo_button_width');
delete_site_option('buy_now_woo_button_width');
delete_option('buy_now_woo_button_height');
delete_site_option('buy_now_woo_button_height');
delete_option('buy_now_woo_button_additional_css');
delete_site_option('buy_now_woo_button_additional_css');
delete_option('buy_now_woo_single_catelog_position');
delete_site_option('buy_now_woo_single_catelog_position');
delete_option('buy_now_woo_single_product_position');
delete_site_option('buy_now_woo_single_product_position');
delete_option('buy_now_woo_single_product_enable');
delete_site_option('buy_now_woo_single_product_enable');
delete_option('buy_now_woo_redirect');
delete_site_option('buy_now_woo_redirect');
delete_option('buy_now_woo_single_product_button');
delete_site_option('buy_now_woo_single_product_button');
delete_option('buy_now_woo_single_product_remove_quantity');
delete_site_option('buy_now_woo_single_product_remove_quantity');
delete_option('buy_now_woo_single_product_reset_cart');
delete_site_option('buy_now_woo_single_product_reset_cart');
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
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'rdn_fetch_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cdx-wpgs-plugin-info-%', '_site_transient_cdx-wpgs-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rn_last_notification_%', '_site_transient_rn_last_notification_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_wpi_check_ran_%', '_site_transient_wpi_check_ran_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rn_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rn_dismissed' ) );

