<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('directiq_id');
delete_site_option('directiq_id');
delete_option('directiq_key');
delete_site_option('directiq_key');
delete_option('directiq_authorize_shop');
delete_site_option('directiq_authorize_shop');

// Clear Cron Jobs
wp_clear_scheduled_hook('directiq_cron_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_directiq_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_directiq_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_directiq_cart_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_directiq_cart_id' ) );

