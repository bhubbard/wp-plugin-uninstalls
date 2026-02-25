<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mercantor_feed_token');
delete_site_option('mercantor_feed_token');
delete_option('mercantor_wizard_data');
delete_site_option('mercantor_wizard_data');
delete_option('mercantor_google_client_id');
delete_site_option('mercantor_google_client_id');
delete_option('mercantor_google_client_secret');
delete_site_option('mercantor_google_client_secret');
delete_option('woo_feed_auto_update_interval');
delete_site_option('woo_feed_auto_update_interval');
delete_option('woo_feed_batch_limit');
delete_site_option('woo_feed_batch_limit');
delete_option('mercantor_migration_completed');
delete_site_option('mercantor_migration_completed');
delete_option('mercantor_settings');
delete_site_option('mercantor_settings');
delete_option('mercantor_rules');
delete_site_option('mercantor_rules');
delete_option('trp_settings');
delete_site_option('trp_settings');
delete_option('mercantor_exchange_rates');
delete_site_option('mercantor_exchange_rates');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');

// Delete Transients
delete_transient('mercantor_sync_total');
delete_site_transient('mercantor_sync_total');
delete_transient('mercantor_sync_processed');
delete_site_transient('mercantor_sync_processed');
delete_transient('mercantor_sync_started_at');
delete_site_transient('mercantor_sync_started_at');
delete_transient('mercantor_oauth_state');
delete_site_transient('mercantor_oauth_state');
delete_transient('mercantor_oauth_return_url');
delete_site_transient('mercantor_oauth_return_url');

// Clear Cron Jobs
wp_clear_scheduled_hook('mercantor_sync_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_global_unique_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_mpn' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_brand' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'mercantor_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'mercantor_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'mercantor_setup_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'mercantor_setup_notice_dismissed' ) );

