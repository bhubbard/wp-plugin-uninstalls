<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('organic::settings_last_updated');
delete_site_option('organic::settings_last_updated');
delete_option('organic::log_to_sentry');
delete_site_option('organic::log_to_sentry');

// Clear Cron Jobs
wp_clear_scheduled_hook('organic_cron_sync_ad_config');
wp_clear_scheduled_hook('organic_cron_sync_content');
wp_clear_scheduled_hook('organic_cron_sync_ads_txt');
wp_clear_scheduled_hook('organic_cron_sync_content_id_map');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_yoast_wpseo_metadesc' ) );

