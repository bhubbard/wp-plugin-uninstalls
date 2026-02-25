<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AMAUCP_Options');
delete_site_option('AMAUCP_Options');
delete_option('amaucp_stylesheet');
delete_site_option('amaucp_stylesheet');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('amaucp_irsetheme');
delete_site_option('amaucp_irsetheme');
delete_option('amaucp_feature_quote');
delete_site_option('amaucp_feature_quote');
delete_option('amaucp_feature_about');
delete_site_option('amaucp_feature_about');
delete_option('amaucp_feature_service');
delete_site_option('amaucp_feature_service');
delete_option('amaucp_feature_team');
delete_site_option('amaucp_feature_team');
delete_option('amaucp_feature_contact');
delete_site_option('amaucp_feature_contact');
delete_option('amaucp_themequotes_bio');
delete_site_option('amaucp_themequotes_bio');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

