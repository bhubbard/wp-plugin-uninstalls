<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sc_hide_sku_enabled');
delete_site_option('sc_hide_sku_enabled');
delete_option('sc_hide_sku_hide_admins_front');
delete_site_option('sc_hide_sku_hide_admins_front');
delete_option('sc_hide_sku_install_time');
delete_site_option('sc_hide_sku_install_time');
delete_option('sc_hide_sku_review_dismissed');
delete_site_option('sc_hide_sku_review_dismissed');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_install_time' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_version' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

