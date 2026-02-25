<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf-cc-licensing-key');
delete_site_option('cf-cc-licensing-key');
delete_option('cf_cc_settings_visited_pages');
delete_site_option('cf_cc_settings_visited_pages');
delete_option('cf_cc_settings_remove_data_on_uninstall');
delete_site_option('cf_cc_settings_remove_data_on_uninstall');
delete_option('cf_cc_addon_settings_addon_google');
delete_site_option('cf_cc_addon_settings_addon_google');
delete_option('dxptoolkit_optin');
delete_site_option('dxptoolkit_optin');
delete_option('dxptoolkit_enable_reporting_feature');
delete_site_option('dxptoolkit_enable_reporting_feature');
delete_option('cf_cc_settings_geoip_provider');
delete_site_option('cf_cc_settings_geoip_provider');
delete_option('dxptoolkit_last_ping');
delete_site_option('dxptoolkit_last_ping');
delete_option('dxptoolkit_optin_notice');
delete_site_option('dxptoolkit_optin_notice');
delete_option('dxptoolkit_telemetry_notice');
delete_site_option('dxptoolkit_telemetry_notice');
delete_option('dxptoolkit_activation_date');
delete_site_option('dxptoolkit_activation_date');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pantheon_ei_gtm_code');
delete_site_option('pantheon_ei_gtm_code');

// Clear Cron Jobs
wp_clear_scheduled_hook('dxptoolkit_ping');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf_cc_trigger_default' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'cf_cc_conditions' ) );

