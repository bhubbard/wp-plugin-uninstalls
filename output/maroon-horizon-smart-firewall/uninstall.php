<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sfais_last_core_report');
delete_site_option('sfais_last_core_report');
delete_option('sfais_last_content_report');
delete_site_option('sfais_last_content_report');
delete_option('sfais_backup_manual_found');
delete_site_option('sfais_backup_manual_found');
delete_option('sfais_backup_manual_age_ok');
delete_site_option('sfais_backup_manual_age_ok');
delete_option('sfais_manual_strong_passwords');
delete_site_option('sfais_manual_strong_passwords');
delete_option('sfais_manual_2fa_enabled');
delete_site_option('sfais_manual_2fa_enabled');
delete_option('sfais_last_quick_check');
delete_site_option('sfais_last_quick_check');
delete_option('sfais_patch_dirlisting_last_report');
delete_site_option('sfais_patch_dirlisting_last_report');
delete_option('sfais_last_quick_rating');
delete_site_option('sfais_last_quick_rating');
delete_option('sfais_patch_versioninfo');
delete_site_option('sfais_patch_versioninfo');
delete_option('sfais_patch_xmlrpc');
delete_site_option('sfais_patch_xmlrpc');
delete_option('sfais_patch_dirlisting');
delete_site_option('sfais_patch_dirlisting');
delete_option('sfais_patch_permissions_last_report');
delete_site_option('sfais_patch_permissions_last_report');
delete_option('sfais_patch_permissions');
delete_site_option('sfais_patch_permissions');
delete_option('sfais_patch_filemods');
delete_site_option('sfais_patch_filemods');
delete_option('sfais_htaccess_safe');
delete_site_option('sfais_htaccess_safe');
delete_option('sfais_patch_fileedit');
delete_site_option('sfais_patch_fileedit');
delete_option('sfais_blocked_ips');
delete_site_option('sfais_blocked_ips');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('mhsf_optin_notice_dismissed');
delete_site_option('mhsf_optin_notice_dismissed');
delete_option('mhsf_show_optin_notice');
delete_site_option('mhsf_show_optin_notice');
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
delete_transient('mhsf_upgrade_error');
delete_site_transient('mhsf_upgrade_error');
delete_transient('sfais_upgrade_error');
delete_site_transient('sfais_upgrade_error');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_mhsf_fs_return_%', '_site_transient_mhsf_fs_return_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fs_snooze_period');
delete_site_transient('fs_snooze_period');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_fs_api_connection_retry_counter');
delete_site_transient('_fs_api_connection_retry_counter');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('fs_debug_turn_off_logging_hook');

