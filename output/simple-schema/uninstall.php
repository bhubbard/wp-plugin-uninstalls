<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sdc_default_schema');
delete_site_option('sdc_default_schema');
delete_option('sdc_default_schema_content');
delete_site_option('sdc_default_schema_content');
delete_option('sdc_defaults');
delete_site_option('sdc_defaults');
delete_option('sdc_settings');
delete_site_option('sdc_settings');
delete_option('moup_uploads');
delete_site_option('moup_uploads');
delete_option('sdc_uploads');
delete_site_option('sdc_uploads');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_opengraph-image' ) );

