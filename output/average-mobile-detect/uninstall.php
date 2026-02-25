<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('avrgmobdtct_redirect');
delete_site_option('avrgmobdtct_redirect');
delete_option('the_mobile_site_uri');
delete_site_option('the_mobile_site_uri');
delete_option('non_mobile_site_uri');
delete_site_option('non_mobile_site_uri');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'avrgmobdtct_equiv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'avrgmobdtct_equiv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'avrgmobdtct_equiv' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'avrgmobdtct_equiv' ) );

