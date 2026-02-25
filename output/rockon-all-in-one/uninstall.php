<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('raio_act_hsf');
delete_site_option('raio_act_hsf');
delete_option('raio_comment_dc');
delete_site_option('raio_comment_dc');
delete_option('raio_bdc_separator');
delete_site_option('raio_bdc_separator');
delete_option('raio_insert_header');
delete_site_option('raio_insert_header');
delete_option('raio_insert_footer');
delete_site_option('raio_insert_footer');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'raio_insert_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'raio_insert_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'raio_insert_header' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'raio_insert_header' ) );

