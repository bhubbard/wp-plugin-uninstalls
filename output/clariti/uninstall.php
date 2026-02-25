<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('clariti_api_key');
delete_site_option('clariti_api_key');
delete_option('clariti_api_host');
delete_site_option('clariti_api_host');
delete_option('clariti_api_secret');
delete_site_option('clariti_api_secret');
delete_option('clariti_plugin_version');
delete_site_option('clariti_plugin_version');

// Delete Transients
delete_transient('settings_errors');
delete_site_transient('settings_errors');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wprm_parent_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wprm_parent_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wprm_parent_post_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wprm_parent_post_id' ) );

