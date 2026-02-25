<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwvpsb_get_settings');
delete_site_option('cwvpsb_get_settings');
delete_option('cache');
delete_site_option('cache');
delete_option('save_posts_offset');
delete_site_option('save_posts_offset');
delete_option('save_terms_offset');
delete_site_option('save_terms_offset');
delete_option('wp_rocket_settings');
delete_site_option('wp_rocket_settings');

// Clear Cron Jobs
wp_clear_scheduled_hook('cwvpsb_autoclear_cron');
wp_clear_scheduled_hook('isa_add_every_one_hour');
wp_clear_scheduled_hook('delete_gravatars_folder');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'dismissed_wp_pointers' ) );

