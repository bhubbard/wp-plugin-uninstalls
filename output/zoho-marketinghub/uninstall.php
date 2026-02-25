<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zmhub_connect_time');
delete_site_option('zmhub_connect_time');
delete_option('zmhub_rated');
delete_site_option('zmhub_rated');
delete_option('zma_notice');
delete_site_option('zma_notice');
delete_option('zmhub_script');
delete_site_option('zmhub_script');
delete_option('zmhub_script_setting');
delete_site_option('zmhub_script_setting');
delete_option('zma_custom_banner_shown');
delete_site_option('zma_custom_banner_shown');
delete_option('zmhub_script_setting_setting');
delete_site_option('zmhub_script_setting_setting');
delete_option('zmhub_domname');
delete_site_option('zmhub_domname');
delete_option('zmhub_token_details');
delete_site_option('zmhub_token_details');
delete_option('zmhub_user_email');
delete_site_option('zmhub_user_email');
delete_option('zmhub_error_msg');
delete_site_option('zmhub_error_msg');
delete_option('zmhub_integration');
delete_site_option('zmhub_integration');
delete_option('zmhub_store_stats');
delete_site_option('zmhub_store_stats');
delete_option('zmhub_intergration_details');
delete_site_option('zmhub_intergration_details');
delete_option('zmhub_optin_setting');
delete_site_option('zmhub_optin_setting');
delete_option('zma_version');
delete_site_option('zma_version');
delete_option('zmh_plugin_version');
delete_site_option('zmh_plugin_version');

// Clear Cron Jobs
wp_clear_scheduled_hook('zmhub_refresh_forms_event');
wp_clear_scheduled_hook('zmhub_track_order_event_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'zma_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'zma_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'zma_newsletter_subscription' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'zma_newsletter_subscription' ) );

