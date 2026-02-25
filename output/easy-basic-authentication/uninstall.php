<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_auth_plugin_admin_enable');
delete_site_option('basic_auth_plugin_admin_enable');
delete_option('basic_auth_plugin_enable');
delete_site_option('basic_auth_plugin_enable');
delete_option('basic_auth_plugin_username');
delete_site_option('basic_auth_plugin_username');
delete_option('basic_auth_plugin_password');
delete_site_option('basic_auth_plugin_password');
delete_option('basic_auth_plugin_whitelist');
delete_site_option('basic_auth_plugin_whitelist');
delete_option('basic_auth_plugin_urlwhitelist');
delete_site_option('basic_auth_plugin_urlwhitelist');
delete_option('basic_auth_plugin_alert_enable');
delete_site_option('basic_auth_plugin_alert_enable');
delete_option('basic_auth_plugin_alertemail');
delete_site_option('basic_auth_plugin_alertemail');
delete_option('basic_auth_plugin_admin_log_enable');
delete_site_option('basic_auth_plugin_admin_log_enable');
delete_option('basic_auth_plugin_remove_data_after_uninstall');
delete_site_option('basic_auth_plugin_remove_data_after_uninstall');
delete_option('basic_auth_failure_logs');
delete_site_option('basic_auth_failure_logs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'locale' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_easy_basic_authentication_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_easy_basic_authentication_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_easy_basic_authentication_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_easy_basic_authentication_notice_dismissed' ) );

