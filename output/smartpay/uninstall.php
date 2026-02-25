<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartpay_settings');
delete_site_option('smartpay_settings');
delete_option('smartpay_db_version');
delete_site_option('smartpay_db_version');
delete_option('smartpay_settings_general');
delete_site_option('smartpay_settings_general');
delete_option('smartpay_settings_gateways');
delete_site_option('smartpay_settings_gateways');
delete_option('smartpay_settings_emails');
delete_site_option('smartpay_settings_emails');
delete_option('smartpay_settings_licenses');
delete_site_option('smartpay_settings_licenses');
delete_option('smartpay_settings_extensions');
delete_site_option('smartpay_settings_extensions');
delete_option('smartpay_pro_license_data');
delete_site_option('smartpay_pro_license_data');

// Delete Transients
delete_transient('wpsmartpay_activation_redirect');
delete_site_transient('wpsmartpay_activation_redirect');
delete_transient('smartpay_check_protect_upload_directory');
delete_site_transient('smartpay_check_protect_upload_directory');

// Clear Cron Jobs
wp_clear_scheduled_hook('smartpay_cleanup_file_symlinks');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smartpay_opted_in_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smartpay_opted_in_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smartpay_opted_in_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smartpay_opted_in_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smartpay_optin_second_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smartpay_optin_second_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smartpay_optin_second_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smartpay_optin_second_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smartpay_optin_first_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smartpay_optin_first_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smartpay_optin_first_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smartpay_optin_first_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'smartpay_optin_third_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'smartpay_optin_third_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'smartpay_optin_third_time_dismissed_at' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'smartpay_optin_third_time_dismissed_at' ) );

