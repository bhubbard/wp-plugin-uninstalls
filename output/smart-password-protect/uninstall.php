<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sppwp_options');
delete_site_option('sppwp_options');
delete_option('sppwp_active_features');
delete_site_option('sppwp_active_features');
delete_option('sppwp_temp_login_settings');
delete_site_option('sppwp_temp_login_settings');
delete_option('sppwp_temp_logins');
delete_site_option('sppwp_temp_logins');
delete_option('sppwp_version');
delete_site_option('sppwp_version');

// Delete Transients
delete_transient('sppwp_activation_redirect');
delete_site_transient('sppwp_activation_redirect');
delete_transient('sppwp_update_redirect');
delete_site_transient('sppwp_update_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('sppwp_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sppwp_is_temp_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sppwp_is_temp_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sppwp_is_temp_user' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sppwp_is_temp_user' ) );

