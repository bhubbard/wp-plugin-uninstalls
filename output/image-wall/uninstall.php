<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('image_wall_regen');
delete_site_option('image_wall_regen');
delete_option('image_wall_regen_method');
delete_site_option('image_wall_regen_method');
delete_option('image_wall_regen_salt');
delete_site_option('image_wall_regen_salt');

// Clear Cron Jobs
wp_clear_scheduled_hook('tmn_iw_attachment_hash_regenerate');
wp_clear_scheduled_hook('tmn_iw_regenerate_action');
wp_clear_scheduled_hook('tmn_tmp_iw_regenerate_action');
wp_clear_scheduled_hook('iw_attachment_hash_regenerate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'tmn-iw-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'tmn-iw-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'tmn-iw-hash' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'tmn-iw-hash' ) );

