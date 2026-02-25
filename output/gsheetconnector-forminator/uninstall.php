<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gs_formntr_info');
delete_site_option('gs_formntr_info');
delete_option('gs_formntr_access_code');
delete_site_option('gs_formntr_access_code');
delete_option('gs_formntr_verify');
delete_site_option('gs_formntr_verify');
delete_option('gs_formntr_token');
delete_site_option('gs_formntr_token');
delete_option('gs_formntr_feeds');
delete_site_option('gs_formntr_feeds');
delete_option('gs_formntr_sheetId');
delete_site_option('gs_formntr_sheetId');
delete_option('gs_formntr_settings');
delete_site_option('gs_formntr_settings');
delete_option('gs_formntr_checkbox_settings');
delete_site_option('gs_formntr_checkbox_settings');
delete_option('gs_formntr_tab_roles_setting');
delete_site_option('gs_formntr_tab_roles_setting');
delete_option('blog_publicize');
delete_site_option('blog_publicize');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('formntr_gs_auth_expired_display_add_interval');
delete_site_option('formntr_gs_auth_expired_display_add_interval');
delete_option('formntr_gs_auth_expired_close_add_interval');
delete_site_option('formntr_gs_auth_expired_close_add_interval');
delete_option('formntr_gs_auth_expired_free');
delete_site_option('formntr_gs_auth_expired_free');
delete_option('gs_formntr_manual_setting');
delete_site_option('gs_formntr_manual_setting');
delete_option('frmgs_debug_log');
delete_site_option('frmgs_debug_log');
delete_option('gs_formntr_sheet_feeds');
delete_site_option('gs_formntr_sheet_feeds');
delete_option('forminatorgsc_api_creds');
delete_site_option('forminatorgsc_api_creds');
delete_option('is_new_client_secret_FORMINGSC');
delete_site_option('is_new_client_secret_FORMINGSC');
delete_option('gs_frmin_token_manual');
delete_site_option('gs_frmin_token_manual');
delete_option('gs_frmin_client_id');
delete_site_option('gs_frmin_client_id');
delete_option('gs_frmin_secret_id');
delete_site_option('gs_frmin_secret_id');
delete_option('gfgs_sheetId');
delete_site_option('gfgs_sheetId');
delete_option('gfgs_feeds');
delete_site_option('gfgs_feeds');
delete_option('frmingf_email_account');
delete_site_option('frmingf_email_account');
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
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('google_sheet_check_expiration');
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forminator_forms_feed_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forminator_forms_feed_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forminator_forms_feed_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forminator_forms_feed_details' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'forminator-google-sheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'forminator-google-sheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'forminator-google-sheet' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'forminator-google-sheet' ) );

