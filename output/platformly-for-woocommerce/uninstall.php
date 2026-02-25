<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('platformly-woocommerce');
delete_site_option('platformly-woocommerce');
delete_option('platformly_wc_cid');
delete_site_option('platformly_wc_cid');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('ply_plugin_cid');
delete_site_option('ply_plugin_cid');
delete_option('ply_project_code_active');
delete_site_option('ply_project_code_active');

// Clear Cron Jobs
wp_clear_scheduled_hook('ply_wc_remove_old_abandoned_carts');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'platformly-woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'platformly-woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'platformly-woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'platformly-woocommerce' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'paltformly_wc_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'paltformly_wc_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'paltformly_wc_is_subscribed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'paltformly_wc_is_subscribed' ) );

