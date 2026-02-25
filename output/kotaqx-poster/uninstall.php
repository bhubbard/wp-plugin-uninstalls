<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kotaqx_poster_version');
delete_site_option('kotaqx_poster_version');
delete_option('kotaqx_poster_settings');
delete_site_option('kotaqx_poster_settings');

// Delete Transients
delete_transient('kotaqx_poster_twitter_oauth_request_token');
delete_site_transient('kotaqx_poster_twitter_oauth_request_token');
delete_transient('kotaqx_poster_twitter_oauth_request_token_secret');
delete_site_transient('kotaqx_poster_twitter_oauth_request_token_secret');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_%_pro_active', '_site_transient_%_pro_active' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('kotaqx_poster_schedule_cron');
wp_clear_scheduled_hook('kotaqx_poster_do_republish_event');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_kotaqx_poster_ever_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_kotaqx_poster_ever_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_kotaqx_poster_ever_published' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_kotaqx_poster_ever_published' ) );

