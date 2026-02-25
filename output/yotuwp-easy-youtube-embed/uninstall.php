<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yotuwp_pro_install_date');
delete_site_option('yotuwp_pro_install_date');
delete_option('yotuwp_tracking_notice');
delete_site_option('yotuwp_tracking_notice');
delete_option('yotuwp_install_date');
delete_site_option('yotuwp_install_date');
delete_option('yotuwp_allow_tracking');
delete_site_option('yotuwp_allow_tracking');
delete_option('yotuwp_tracking_last_send');
delete_site_option('yotuwp_tracking_last_send');
delete_option('yotu-api');
delete_site_option('yotu-api');
delete_option('yotuwp_rating_date');
delete_site_option('yotuwp_rating_date');
delete_option('yotu-settings');
delete_site_option('yotu-settings');
delete_option('yotu-player');
delete_site_option('yotu-player');
delete_option('yotu-styling');
delete_site_option('yotu-styling');
delete_option('yotu-effects');
delete_site_option('yotu-effects');
delete_option('yotu-cache');
delete_site_option('yotu-cache');
delete_option('yotuwp_activation_redirect');
delete_site_option('yotuwp_activation_redirect');
delete_option('yotuwp_presets');
delete_site_option('yotuwp_presets');

// Clear Cron Jobs
wp_clear_scheduled_hook('yotuwp_cache_event');
wp_clear_scheduled_hook('yotuwp_weekly_scheduled_events');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yotuwp_scgen_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yotuwp_scgen_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yotuwp_scgen_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yotuwp_scgen_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'yotuwp_rating_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'yotuwp_rating_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'yotuwp_rating_ignore_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'yotuwp_rating_ignore_notice' ) );

