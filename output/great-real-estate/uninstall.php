<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('greatrealestate_pageforlistings');
delete_site_option('greatrealestate_pageforlistings');
delete_option('wpurl');
delete_site_option('wpurl');
delete_option('greatrealestate_listfeedtitle');
delete_site_option('greatrealestate_listfeedtitle');
delete_option('greatrealestate_listfeeddesc');
delete_site_option('greatrealestate_listfeeddesc');
delete_option('greatrealestate_mls');
delete_site_option('greatrealestate_mls');
delete_option('greatrealestate_agent');
delete_site_option('greatrealestate_agent');
delete_option('greatrealestate_broker');
delete_site_option('greatrealestate_broker');
delete_option('greatrealestate_agentphone');
delete_site_option('greatrealestate_agentphone');
delete_option('greatrealestate_maxfeatured');
delete_site_option('greatrealestate_maxfeatured');
delete_option('greatrealestate_usecss');
delete_site_option('greatrealestate_usecss');
delete_option('greatrealestate_nobrand');
delete_site_option('greatrealestate_nobrand');
delete_option('greatrealestate_db_version');
delete_site_option('greatrealestate_db_version');
delete_option('gre-manual-update-pending');
delete_site_option('gre-manual-update-pending');
delete_option('gre-2-migration');
delete_site_option('gre-2-migration');
delete_option('download_path');
delete_site_option('download_path');
delete_option('ngg_options');
delete_site_option('ngg_options');
delete_option('download_categories');
delete_site_option('download_categories');
delete_option('widget_grefeatured');
delete_site_option('widget_grefeatured');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gre[property-type]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gre[property-type]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gre[property-type]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gre[property-type]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gre[downloads]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gre[downloads]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gre[downloads]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gre[downloads]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_gre[google-maps][geolocation]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_gre[google-maps][geolocation]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_gre[google-maps][geolocation]' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_gre[google-maps][geolocation]' ) );

