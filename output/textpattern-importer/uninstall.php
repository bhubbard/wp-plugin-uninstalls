<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('txpuser');
delete_site_option('txpuser');
delete_option('txppass');
delete_site_option('txppass');
delete_option('txpname');
delete_site_option('txpname');
delete_option('txphost');
delete_site_option('txphost');
delete_option('tpre');
delete_site_option('tpre');
delete_option('txpcat2wpcat');
delete_site_option('txpcat2wpcat');
delete_option('txpid2wpid');
delete_site_option('txpid2wpid');
delete_option('txpposts2wpposts');
delete_site_option('txpposts2wpposts');
delete_option('txpcm2wpcm');
delete_site_option('txpcm2wpcm');
delete_option('txplinks2wplinks');
delete_site_option('txplinks2wplinks');
delete_option('txp_cats');
delete_site_option('txp_cats');
delete_option('txp_links');
delete_site_option('txp_links');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wp_user_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wp_user_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wp_user_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wp_user_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rich_editing' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rich_editing' ) );

