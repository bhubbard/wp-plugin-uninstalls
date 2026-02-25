<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('_transient_timeout_fs_snooze_period');
delete_site_option('_transient_timeout_fs_snooze_period');
delete_option('_site_transient_timeout_fs_snooze_period');
delete_site_option('_site_transient_timeout_fs_snooze_period');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('is_new_client_secret_cf7gscfree');
delete_site_option('is_new_client_secret_cf7gscfree');
delete_option('gs_token');
delete_site_option('gs_token');
delete_option('gs_verify');
delete_site_option('gs_verify');
delete_option('cf7gs_auth_expired_free');
delete_site_option('cf7gs_auth_expired_free');
delete_option('gs_debug_log_file');
delete_site_option('gs_debug_log_file');
delete_option('google_sheet_info_free');
delete_site_option('google_sheet_info_free');
delete_option('gs_access_code');
delete_site_option('gs_access_code');
delete_option('gs_display_add_interval');
delete_site_option('gs_display_add_interval');
delete_option('gs_close_add_interval');
delete_site_option('gs_close_add_interval');
delete_option('gs_auth_expired_display_add_interval');
delete_site_option('gs_auth_expired_display_add_interval');
delete_option('gs_auth_expired_close_add_interval');
delete_site_option('gs_auth_expired_close_add_interval');
delete_option('blog_publicize');
delete_site_option('blog_publicize');
delete_option('gs_upgrade_notice_interval');
delete_site_option('gs_upgrade_notice_interval');
delete_option('gs_close_upgrade_notice');
delete_site_option('gs_close_upgrade_notice');
delete_option('cf7gsc_free_api_creds');
delete_site_option('cf7gsc_free_api_creds');
delete_option('cf7gf_email_account');
delete_site_option('cf7gf_email_account');

// Delete Transients
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('cf7gs_upgrade_redirect');
delete_site_transient('cf7gs_upgrade_redirect');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gs_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gs_map_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gs_map_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gs_map_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gs_map_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_form' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gs_map_custom_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gs_map_custom_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gs_map_custom_mail_tags' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gs_map_custom_mail_tags' ) );

