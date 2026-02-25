<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkinbio_landing_page_custom_slug');
delete_site_option('linkinbio_landing_page_custom_slug');
delete_option('linkinbio_flush_rewrites');
delete_site_option('linkinbio_flush_rewrites');
delete_option('linkinbio_landing_page_disable_css');
delete_site_option('linkinbio_landing_page_disable_css');
delete_option('linkinbio_page_image');
delete_site_option('linkinbio_page_image');
delete_option('linkinbio_landing_page_image_link');
delete_site_option('linkinbio_landing_page_image_link');
delete_option('linkinbio_landing_page_caption');
delete_site_option('linkinbio_landing_page_caption');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_linkinbio_redirect_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_linkinbio_redirect_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_linkinbio_redirect_link' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_linkinbio_redirect_link' ) );

