<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('TTLive_refreshHours');
delete_site_option('TTLive_refreshHours');
delete_option('TTLive_baseurl');
delete_site_option('TTLive_baseurl');
delete_option('TTLive_divisionID');
delete_site_option('TTLive_divisionID');
delete_option('TTLive_tableclassname_TeamSpielplan');
delete_site_option('TTLive_tableclassname_TeamSpielplan');
delete_option('TTLive_tableclassname_Tabelle');
delete_site_option('TTLive_tableclassname_Tabelle');
delete_option('TTLive_tableclassname_Hallenplan');
delete_site_option('TTLive_tableclassname_Hallenplan');
delete_option('TTLive_tableclassname_Rangliste');
delete_site_option('TTLive_tableclassname_Rangliste');
delete_option('TTLive_tableclassname_14Tage');
delete_site_option('TTLive_tableclassname_14Tage');
delete_option('TTLive_tableclassname_Mannschaft');
delete_site_option('TTLive_tableclassname_Mannschaft');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mannschaft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mannschaft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mannschaft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mannschaft_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'staffel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'staffel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'staffel_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'staffel_id' ) );

