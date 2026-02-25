<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'apbd_prov_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('health-check-allowed-plugins');
delete_site_option('health-check-allowed-plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_addons' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_installed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('_vt_ac');
delete_site_option('_vt_ac');
delete_option('apps_bd_ups');
delete_site_option('apps_bd_ups');
delete_option('vc_addons');
delete_site_option('vc_addons');
delete_option('wc_admin_show_legacy_coupon_menu');
delete_site_option('wc_admin_show_legacy_coupon_menu');
delete_option('woocommerce_enable_coupons');
delete_site_option('woocommerce_enable_coupons');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dismissed_notice_%', '_site_transient_dismissed_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_cogs_total_value' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_cogs_total_value' ) );

