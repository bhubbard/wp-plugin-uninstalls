<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jws_version');
delete_site_option('jws_version');
delete_option('jws_roles');
delete_site_option('jws_roles');
delete_option('jws_stopwords_options');
delete_site_option('jws_stopwords_options');
delete_option('jws_admin_options');
delete_site_option('jws_admin_options');
delete_option('jws_reading_time');
delete_site_option('jws_reading_time');
delete_option('jws_excluded_types');
delete_site_option('jws_excluded_types');
delete_option('jws_stats_calculated');
delete_site_option('jws_stats_calculated');
delete_option('wpwcp_reading_time');
delete_site_option('wpwcp_reading_time');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tve_updated_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tve_updated_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tve_updated_post' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tve_updated_post' ) );

