<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdw_matomo_migrated_v143');
delete_site_option('mdw_matomo_migrated_v143');
delete_option('ellpt_matomo_url');
delete_site_option('ellpt_matomo_url');
delete_option('ellpt_matomo_site_id');
delete_site_option('ellpt_matomo_site_id');
delete_option('mdw_matomo_url');
delete_site_option('mdw_matomo_url');
delete_option('mdw_matomo_site_id');
delete_site_option('mdw_matomo_site_id');
delete_option('mdw_matomo_source');
delete_site_option('mdw_matomo_source');
delete_option('mdw_matomo_token');
delete_site_option('mdw_matomo_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mdw_last_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mdw_last_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mdw_last_period' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mdw_last_period' ) );

