<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ACTUS_XF_VERSION');
delete_site_option('ACTUS_XF_VERSION');
delete_option('AXF_fieldnames');
delete_site_option('AXF_fieldnames');
delete_option('AXF_globals');
delete_site_option('AXF_globals');
delete_option('AXF_fieldsets');
delete_site_option('AXF_fieldsets');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'actus_xfields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'actus_xfields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'actus_xfields' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'actus_xfields' ) );

