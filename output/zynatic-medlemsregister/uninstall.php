<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zynaau_options');
delete_site_option('zynaau_options');
delete_option('zynatic_authentication_option_name');
delete_site_option('zynatic_authentication_option_name');
delete_option('zynatic_medlemsregister_option_name');
delete_site_option('zynatic_medlemsregister_option_name');
delete_option('zynamr_options');
delete_site_option('zynamr_options');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'ZynaticID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'ZynaticID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'ZynaticID' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'ZynaticID' ) );

