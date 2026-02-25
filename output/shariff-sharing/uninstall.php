<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shariff_gplus');
delete_site_option('shariff_gplus');
delete_option('shariff_fb');
delete_site_option('shariff_fb');
delete_option('shariff_twitter');
delete_site_option('shariff_twitter');
delete_option('shariff_linkedin');
delete_site_option('shariff_linkedin');
delete_option('shariff_pinterest');
delete_site_option('shariff_pinterest');
delete_option('shariff_xing');
delete_site_option('shariff_xing');
delete_option('shariff_reddit');
delete_site_option('shariff_reddit');
delete_option('shariff_stumbleupon');
delete_site_option('shariff_stumbleupon');
delete_option('shariff_whatsapp');
delete_site_option('shariff_whatsapp');
delete_option('shariff_email');
delete_site_option('shariff_email');
delete_option('shariff_info');
delete_site_option('shariff_info');
delete_option('shariff_beforeafter');
delete_site_option('shariff_beforeafter');
delete_option('shariff_image');
delete_site_option('shariff_image');
delete_option('shariff_hideonoverview');
delete_site_option('shariff_hideonoverview');
delete_option('shariff_twittervia');
delete_site_option('shariff_twittervia');
delete_option('shariff_infourl');
delete_site_option('shariff_infourl');
delete_option('shariff_temp');
delete_site_option('shariff_temp');
delete_option('shariff_ttl');
delete_site_option('shariff_ttl');
delete_option('shariff_color');
delete_site_option('shariff_color');
delete_option('shariff_orientation');
delete_site_option('shariff_orientation');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'shariff_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'shariff_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'shariff_enabled' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'shariff_enabled' ) );

