<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rafflepress_version');
delete_site_option('rafflepress_version');
delete_option('rafflepress_run_activation');
delete_site_option('rafflepress_run_activation');
delete_option('rafflepress_settings');
delete_site_option('rafflepress_settings');
delete_option('rafflepress_api_key ');
delete_site_option('rafflepress_api_key ');
delete_option('rafflepress_per');
delete_site_option('rafflepress_per');
delete_option('rafflepress_a');
delete_site_option('rafflepress_a');
delete_option('rafflepress_one_click_upgrade');
delete_site_option('rafflepress_one_click_upgrade');
delete_option('rafflepress_api_token');
delete_site_option('rafflepress_api_token');
delete_option('rafflepress_token');
delete_site_option('rafflepress_token');
delete_option('rafflepress_license_name');
delete_site_option('rafflepress_license_name');
delete_option('rafflepress_api_key');
delete_site_option('rafflepress_api_key');
delete_option('rafflepress_api_message');
delete_site_option('rafflepress_api_message');
delete_option('rafflepress_over_time');
delete_site_option('rafflepress_over_time');
delete_option('dashboards_disabled');
delete_site_option('dashboards_disabled');
delete_option('rafflepress_hide_review');
delete_site_option('rafflepress_hide_review');
delete_option('rafflepress_review');
delete_site_option('rafflepress_review');
delete_option('rafflepress_log');
delete_site_option('rafflepress_log');
delete_option('rafflepress_enable_log');
delete_site_option('rafflepress_enable_log');
delete_option('rafflepress_dismiss_settings_lite_cta');
delete_site_option('rafflepress_dismiss_settings_lite_cta');
delete_option('rafflepress_initial_version');
delete_site_option('rafflepress_initial_version');

// Delete Transients
delete_transient('_rafflepress_welcome_screen_activation_redirect');
delete_site_transient('_rafflepress_welcome_screen_activation_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('rafflepress_notifications_remote');
wp_clear_scheduled_hook('rafflepress_lite_fetch_help_docs');
wp_clear_scheduled_hook('seedprod_fetch_help_docs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_rafflepress_creating_giveaway' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_rafflepress_creating_giveaway' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_rafflepress_creating_giveaway' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_rafflepress_creating_giveaway' ) );

