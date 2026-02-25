<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stratum_api');
delete_site_option('stratum_api');
delete_option('stratum_instagram_token_cron_error_message');
delete_site_option('stratum_instagram_token_cron_error_message');
delete_option('stratum_db_version');
delete_site_option('stratum_db_version');
delete_option('stratum_db_version_history');
delete_site_option('stratum_db_version_history');
delete_option('stratum_style');
delete_site_option('stratum_style');
delete_option('stratum_widgets');
delete_site_option('stratum_widgets');

// Delete Transients
delete_transient('stratum_instagram_response_data');
delete_site_transient('stratum_instagram_response_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('stratum_refresh_instagram_token');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_wp_attachment_image_alt' ) );

