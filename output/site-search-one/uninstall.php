<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('site-search-one-premium-install-location');
delete_site_option('site-search-one-premium-install-location');
delete_option('site-search-one-install-location');
delete_site_option('site-search-one-install-location');

// Delete Transients
delete_transient('ss1-endpoint-url');
delete_site_transient('ss1-endpoint-url');
delete_transient('ss1-apiKey');
delete_site_transient('ss1-apiKey');
delete_transient('ss1-disableLongRunningThreads');
delete_site_transient('ss1-disableLongRunningThreads');
delete_transient('ss1-maximumBatchSize');
delete_site_transient('ss1-maximumBatchSize');
delete_transient('ss1-queue-paused');
delete_site_transient('ss1-queue-paused');
delete_transient('ss1-searchform-override');
delete_site_transient('ss1-searchform-override');
delete_transient('ss1-globals-installed');
delete_site_transient('ss1-globals-installed');
delete_transient('ss1-indexes-installed');
delete_site_transient('ss1-indexes-installed');
delete_transient('ss1-site-vars-installed');
delete_site_transient('ss1-site-vars-installed');
delete_transient('ss1-tokens-has-sites');
delete_site_transient('ss1-tokens-has-sites');
delete_transient('ss1-search-pages-installed');
delete_site_transient('ss1-search-pages-installed');
delete_transient('ss1-active');
delete_site_transient('ss1-active');

// Clear Cron Jobs
wp_clear_scheduled_hook('ss1_cron_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_ss1_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_ss1_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_ss1_noindex' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_ss1_noindex' ) );

