<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gdevents_installed');
delete_site_option('gdevents_installed');
delete_option('geodir_event_version');
delete_site_option('geodir_event_version');
delete_option('geodir_event_db_version');
delete_site_option('geodir_event_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%category_installed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('geodirectory_db_version');
delete_site_option('geodirectory_db_version');
delete_option('geodirevents_db_version');
delete_site_option('geodirevents_db_version');
delete_option('geodirectory_version');
delete_site_option('geodirectory_version');
delete_option('geodir_settings');
delete_site_option('geodir_settings');
delete_option('recently_activated');
delete_site_option('recently_activated');

// Delete Transients
delete_transient('_geodir_event_activation_redirect');
delete_site_transient('_geodir_event_activation_redirect');
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('geodir_event_schedule_handle_past_events');
wp_clear_scheduled_hook('geodir_flush_rewrite_rules');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'event_rsvp_yes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'event_rsvp_yes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'event_rsvp_yes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'event_rsvp_yes' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'event_rsvp_maybe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'event_rsvp_maybe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'event_rsvp_maybe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'event_rsvp_maybe' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'tgmpa_dismissed_notice_%' ) );

