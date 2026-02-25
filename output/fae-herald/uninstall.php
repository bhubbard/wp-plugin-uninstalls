<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fae_herald_version');
delete_site_option('fae_herald_version');
delete_option('fae_herald_data');
delete_site_option('fae_herald_data');
delete_option('fae_herald_lifecycle');
delete_site_option('fae_herald_lifecycle');

// Delete Transients
delete_transient('fae_herald_activation_notice');
delete_site_transient('fae_herald_activation_notice');
delete_transient('fae_herald_refresh_notice');
delete_site_transient('fae_herald_refresh_notice');
delete_transient('fae_herald_refresh_plugin_name');
delete_site_transient('fae_herald_refresh_plugin_name');

// Clear Cron Jobs
wp_clear_scheduled_hook('fae_herald_get_info');
wp_clear_scheduled_hook('fae_herald_check_single');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fae_herald_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fae_herald_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fae_herald_screen_options' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fae_herald_screen_options' ) );

