<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gs_formidable_page_roles_setting');
delete_site_option('gs_formidable_page_roles_setting');
delete_option('frmgsc_debug_log_file');
delete_site_option('frmgsc_debug_log_file');
delete_option('gscfrmdform_manual_setting');
delete_site_option('gscfrmdform_manual_setting');
delete_option('frmgsc_gs_token');
delete_site_option('frmgsc_gs_token');
delete_option('frmgsc_gs_access_code');
delete_site_option('frmgsc_gs_access_code');
delete_option('gscfrmdform_verify');
delete_site_option('gscfrmdform_verify');
delete_option('gscfrmdform_client_id');
delete_site_option('gscfrmdform_client_id');
delete_option('gscfrmdform_secret_id');
delete_site_option('gscfrmdform_secret_id');
delete_option('gscfrmdform_access_manual_code');
delete_site_option('gscfrmdform_access_manual_code');
delete_option('gscfrmdform_token_manual');
delete_site_option('gscfrmdform_token_manual');
delete_option('gscfrmdform_info');
delete_site_option('gscfrmdform_info');
delete_option('blog_publicize');
delete_site_option('blog_publicize');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('formidable_form_gs_auth_expired_display_add_interval');
delete_site_option('formidable_form_gs_auth_expired_display_add_interval');
delete_option('formidable_form_gs_auth_expired_close_add_interval');
delete_site_option('formidable_form_gs_auth_expired_close_add_interval');
delete_option('formidable_form_gs_auth_expired_free');
delete_site_option('formidable_form_gs_auth_expired_free');
delete_option('formidablegsc_api_creds');
delete_site_option('formidablegsc_api_creds');
delete_option('is_new_client_secret_frmgsc');
delete_site_option('is_new_client_secret_frmgsc');
delete_option('gscfrmd_email_account');
delete_site_option('gscfrmd_email_account');
delete_option('frmgsc_email_account_manual');
delete_site_option('frmgsc_email_account_manual');
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
delete_transient('gs_formidable_success_message');
delete_site_transient('gs_formidable_success_message');
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
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gscfrm_form_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gscfrm_form_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gscfrm_form_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gscfrm_form_feeds' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'gscfrm_form_feeds_sheet_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'gscfrm_form_feeds_sheet_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'gscfrm_form_feeds_sheet_settings' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'gscfrm_form_feeds_sheet_settings' ) );

