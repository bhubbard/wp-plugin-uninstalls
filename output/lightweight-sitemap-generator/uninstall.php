<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lwsgp_options_v06');
delete_site_option('lwsgp_options_v06');
delete_option('lwsgp_last_generated_gmt');
delete_site_option('lwsgp_last_generated_gmt');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('lwsgp_preview_nonce');
delete_site_option('lwsgp_preview_nonce');

// Delete Transients
delete_transient('lwsgp_flash_scan');
delete_site_transient('lwsgp_flash_scan');
delete_transient('lwsgp_flash_preview');
delete_site_transient('lwsgp_flash_preview');
delete_transient('lwsgp_flash_generic');
delete_site_transient('lwsgp_flash_generic');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%:auto_off_note', '_site_transient_%:auto_off_note' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

