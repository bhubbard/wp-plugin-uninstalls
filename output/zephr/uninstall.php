<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zephr');
delete_site_option('zephr');
delete_option('zephr_user_migration_success');
delete_site_option('zephr_user_migration_success');

// Delete Transients
delete_transient('zephr_graphql_sites');
delete_site_transient('zephr_graphql_sites');
delete_transient('zephr_browser_version');
delete_site_transient('zephr_browser_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('zephr_update_proxied_pages');
wp_clear_scheduled_hook('do_zephr_user_migrate');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zephr_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zephr_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zephr_feature' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zephr_feature' ) );

