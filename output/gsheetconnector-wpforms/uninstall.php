<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wpf_gs_debug_log_file');
delete_site_option('wpf_gs_debug_log_file');
delete_option('wpform_gs_access_code');
delete_site_option('wpform_gs_access_code');
delete_option('wpform_gs_verify');
delete_site_option('wpform_gs_verify');
delete_option('wpform_GS_info');
delete_site_option('wpform_GS_info');
delete_option('wpform_gs_token');
delete_site_option('wpform_gs_token');
delete_option('wpform_uninstall');
delete_site_option('wpform_uninstall');
delete_option('blog_publicize');
delete_site_option('blog_publicize');
delete_option('wpform_gs_auth_expired_display_add_interval');
delete_site_option('wpform_gs_auth_expired_display_add_interval');
delete_option('wpform_gs_auth_expired_close_add_interval');
delete_site_option('wpform_gs_auth_expired_close_add_interval');
delete_option('wpform_gs_auth_expired_free');
delete_site_option('wpform_gs_auth_expired_free');
delete_option('Wpformsgsc_api_creds');
delete_site_option('Wpformsgsc_api_creds');
delete_option('wpforms_manual_setting');
delete_site_option('wpforms_manual_setting');
delete_option('is_new_client_secret_wpformsgsc');
delete_site_option('is_new_client_secret_wpformsgsc');
delete_option('wpforms_gs_upgrade_notice_interval');
delete_site_option('wpforms_gs_upgrade_notice_interval');
delete_option('wpforms_gs_close_upgrade_notice');
delete_site_option('wpforms_gs_close_upgrade_notice');
delete_option('wpforms_gs_sheetId');
delete_site_option('wpforms_gs_sheetId');
delete_option('wpgs_email_account');
delete_site_option('wpgs_email_account');
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');

// Delete Transients
delete_transient('wpform_gs_upgrade_redirect');
delete_site_transient('wpform_gs_upgrade_redirect');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpform_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpform_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpform_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpform_gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpform_gs_old_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpform_gs_old_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpform_gs_old_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpform_gs_old_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpform_gs_settings_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpform_gs_settings_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpform_gs_settings_new' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpform_gs_settings_new' ) );

