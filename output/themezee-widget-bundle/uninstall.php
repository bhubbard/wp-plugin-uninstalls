<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'widget_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('tzwb_settings');
delete_site_option('tzwb_settings');

// Delete Transients
delete_transient('tzwb_admin_notice_dismissed');
delete_site_transient('tzwb_admin_notice_dismissed');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_tzwb_admin_notice_%', '_site_transient_tzwb_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

