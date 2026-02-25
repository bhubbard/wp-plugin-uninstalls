<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('scrgen_width');
delete_site_option('scrgen_width');
delete_option('scrgen_height');
delete_site_option('scrgen_height');
delete_option('scrgen_enable_cropping');
delete_site_option('scrgen_enable_cropping');
delete_option('scrgen_crop_left');
delete_site_option('scrgen_crop_left');
delete_option('scrgen_crop_top');
delete_site_option('scrgen_crop_top');
delete_option('scrgen_crop_width');
delete_site_option('scrgen_crop_width');
delete_option('scrgen_crop_height');
delete_site_option('scrgen_crop_height');
delete_option('scrgen_social_strategy');
delete_site_option('scrgen_social_strategy');

// Clear Cron Jobs
wp_clear_scheduled_hook('scrgen_update_post_screenshot');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_scrgen_screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_scrgen_screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_scrgen_screenshot' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_scrgen_screenshot' ) );

