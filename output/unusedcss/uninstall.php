<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rapidload_license_data');
delete_site_option('rapidload_license_data');
delete_option('rapidload_settings');
delete_site_option('rapidload_settings');
delete_option('rapidload_do_activation_redirect');
delete_site_option('rapidload_do_activation_redirect');
delete_option('rapidload_onboard_skipped');
delete_site_option('rapidload_onboard_skipped');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('rapidload_titan_gear');
delete_site_option('rapidload_titan_gear');
delete_option('rapidload_privacy_policy_accepted');
delete_site_option('rapidload_privacy_policy_accepted');
delete_option('rapidload_cache');
delete_site_option('rapidload_cache');
delete_option('optml_settings');
delete_site_option('optml_settings');

// Delete Transients
delete_transient('rapidload_cache_disk_updated');
delete_site_transient('rapidload_cache_disk_updated');
delete_transient('rapidload_page_cache_size');
delete_site_transient('rapidload_page_cache_size');

// Clear Cron Jobs
wp_clear_scheduled_hook('cron_uucss_process_queue');
wp_clear_scheduled_hook('uucss_run_gpsi_test_for_all');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", '_uucss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", '_uucss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", '_uucss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", '_uucss_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_clear_post_cache_on_update' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rapidload_js_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rapidload_js_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rapidload_js_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rapidload_js_settings' ) );

