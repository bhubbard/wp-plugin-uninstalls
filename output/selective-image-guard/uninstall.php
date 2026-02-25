<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'edd_api_request_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('eos_sig_license_key');
delete_site_option('eos_sig_license_key');
delete_option('eos_sig_bulk');
delete_site_option('eos_sig_bulk');
delete_option('eos_sig_woo_gallery');
delete_site_option('eos_sig_woo_gallery');
delete_option('eos_sig_post_types');
delete_site_option('eos_sig_post_types');
delete_option('eos_sig_post_types_all');
delete_site_option('eos_sig_post_types_all');
delete_option('eos_sig_watermark');
delete_site_option('eos_sig_watermark');
delete_option('eos_sig_watermark_text');
delete_site_option('eos_sig_watermark_text');
delete_option('eos_sig_hard_watermark');
delete_site_option('eos_sig_hard_watermark');
delete_option('eos_sig_license_status');
delete_site_option('eos_sig_license_status');
delete_option('eos_sig_watermark_device');
delete_site_option('eos_sig_watermark_device');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_eos_sig_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_eos_sig_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_eos_sig_protection' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_eos_sig_protection' ) );

