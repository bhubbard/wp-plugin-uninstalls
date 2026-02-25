<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gklpa_showinwritepage');
delete_site_option('gklpa_showinwritepage');
delete_option('gklpa_mydir');
delete_site_option('gklpa_mydir');
delete_option('gklpa_before');
delete_site_option('gklpa_before');
delete_option('gklpa_after');
delete_site_option('gklpa_after');
delete_option('gklpa_class');
delete_site_option('gklpa_class');
delete_option('gklpa_getsize');
delete_site_option('gklpa_getsize');
delete_option('gklpa_scanrecursive');
delete_site_option('gklpa_scanrecursive');
delete_option('gklpa_showincontent');
delete_site_option('gklpa_showincontent');
delete_option('gklpa_showinfeeds');
delete_site_option('gklpa_showinfeeds');
delete_option('gkl_postavatar');
delete_site_option('gkl_postavatar');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'postuserpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'postuserpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'postuserpic' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'postuserpic' ) );

