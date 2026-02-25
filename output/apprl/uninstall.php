<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apprl_version');
delete_site_option('apprl_version');
delete_option('apprl_activation_date');
delete_site_option('apprl_activation_date');
delete_option('apprl_cron_running');
delete_site_option('apprl_cron_running');
delete_option('apprl_token');
delete_site_option('apprl_token');
delete_option('apprl_error');
delete_site_option('apprl_error');
delete_option('apprl__auto_transform');
delete_site_option('apprl__auto_transform');
delete_option('apprl__auto_span');
delete_site_option('apprl__auto_span');
delete_option('apprl__auto_transform_optout');
delete_site_option('apprl__auto_transform_optout');

// Clear Cron Jobs
wp_clear_scheduled_hook('apprl_reprocess_auto_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'apprl__auto_transform_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'apprl__auto_transform_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'apprl__auto_transform_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'apprl__auto_transform_optout' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'apprl__links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'apprl__links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'apprl__links' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'apprl__links' ) );

