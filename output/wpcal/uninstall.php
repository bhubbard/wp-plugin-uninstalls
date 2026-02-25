<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcal_features_last_checked');
delete_site_option('wpcal_features_last_checked');
delete_option('wpcal_db_version');
delete_site_option('wpcal_db_version');
delete_option('wpcal_last_local_task_started_time');
delete_site_option('wpcal_last_local_task_started_time');
delete_option('wpcal_install_version');
delete_site_option('wpcal_install_version');
delete_option('wpcal_version');
delete_site_option('wpcal_version');
delete_option('wpcal_last_validate_attempt');
delete_site_option('wpcal_last_validate_attempt');
delete_option('wpcal_setting_time_format');
delete_site_option('wpcal_setting_time_format');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpcal_setting_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpcal_first_activation_redirect');
delete_site_option('wpcal_first_activation_redirect');
delete_option('wpcal_setting_asset_preloading_is_enabled');
delete_site_option('wpcal_setting_asset_preloading_is_enabled');
delete_option('wpcal_license_auth_info');
delete_site_option('wpcal_license_auth_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpcal_api_task_cron');
wp_clear_scheduled_hook('wpcal_local_task_cron');
wp_clear_scheduled_hook('wpcal_misc_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcal_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcal_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcal_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcal_admin_notices' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcal_admin_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcal_admin_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcal_admin_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcal_admin_profile_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'wpcal_admin_setting_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'wpcal_admin_setting_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'wpcal_admin_setting_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'wpcal_admin_setting_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpcal_user_tz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpcal_user_tz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpcal_user_tz' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpcal_user_tz' ) );

