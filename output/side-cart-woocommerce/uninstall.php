<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('xoo-wsc-pattern-init');
delete_site_option('xoo-wsc-pattern-init');
delete_option('xoo-wsc-old-header-layout');
delete_site_option('xoo-wsc-old-header-layout');
delete_option('xoo-el-version');
delete_site_option('xoo-el-version');
delete_option('xoo-el-sy-options');
delete_site_option('xoo-el-sy-options');
delete_option('xoo-el-gl-options');
delete_site_option('xoo-el-gl-options');
delete_option('xoo-el-settings-init');
delete_site_option('xoo-el-settings-init');
delete_option('xoo-wsc-enqueue-cartfragment');
delete_site_option('xoo-wsc-enqueue-cartfragment');
delete_option('xoo-wsc-gl-options');
delete_site_option('xoo-wsc-gl-options');
delete_option('xoo-wsc-sy-options');
delete_site_option('xoo-wsc-sy-options');
delete_option('xoo_tracking_consent_side-cart-woocommerce');
delete_site_option('xoo_tracking_consent_side-cart-woocommerce');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'xoo_tracking_consent_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_theme_templates_data' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_xoo_tracking_consent_last_sent_%', '_site_transient_xoo_tracking_consent_last_sent_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

