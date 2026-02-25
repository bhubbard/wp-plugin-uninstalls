<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ruigehond_plugin_error');
delete_site_option('ruigehond_plugin_error');
delete_option('ruigehond010_admin_multi_message');
delete_site_option('ruigehond010_admin_multi_message');
delete_option('ruigehond010_flag_flush_rewrite_rules');
delete_site_option('ruigehond010_flag_flush_rewrite_rules');
delete_option('ruigehond010');
delete_site_option('ruigehond010');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ruigehond010_exclusive' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ruigehond010_exclusive' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ruigehond010_exclusive' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ruigehond010_exclusive' ) );

