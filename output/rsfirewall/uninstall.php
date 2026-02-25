<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rsfirewall_log_emails_count');
delete_site_option('rsfirewall_log_emails_count');
delete_option('rsfirewall_log_emails_send_after');
delete_site_option('rsfirewall_log_emails_send_after');
delete_option('rsfirewall_version');
delete_site_option('rsfirewall_version');
delete_option('rsfirewall_lite_version');
delete_site_option('rsfirewall_lite_version');
delete_option('rsfirewall_backend_password');
delete_site_option('rsfirewall_backend_password');
delete_option('rsfirewall_system_check');
delete_site_option('rsfirewall_system_check');
delete_option('rsfirewall_active_scanner');
delete_site_option('rsfirewall_active_scanner');
delete_option('rsfirewall_core_scanner');
delete_site_option('rsfirewall_core_scanner');
delete_option('rsfirewall_lockdown');
delete_site_option('rsfirewall_lockdown');
delete_option('rsfirewall_logging');
delete_site_option('rsfirewall_logging');
delete_option('rsfirewall_import');
delete_site_option('rsfirewall_import');
delete_option('rsfirewall_updates');
delete_site_option('rsfirewall_updates');
delete_option('rsfirewall_grade');
delete_site_option('rsfirewall_grade');
delete_option('rsfirewall_system_check_last_run');
delete_site_option('rsfirewall_system_check_last_run');
delete_option('rsfirewall_admin_users');
delete_site_option('rsfirewall_admin_users');
delete_option('rsfirewall_hardening');
delete_site_option('rsfirewall_hardening');

// Delete Transients
delete_transient('global_admin_notice');
delete_site_transient('global_admin_notice');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('rsf_bulk_add_ips_form_data');
delete_site_transient('rsf_bulk_add_ips_form_data');

// Clear Cron Jobs
wp_clear_scheduled_hook('rsfirewall_clear_transient');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_ip' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_reason' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_code' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_debug_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_debug_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_debug_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_debug_variables' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_type' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rsfirewall_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rsfirewall_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rsfirewall_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rsfirewall_level' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key LIKE %s", 'rsfirewall_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key LIKE %s", 'rsfirewall_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key LIKE %s", 'rsfirewall_%' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key LIKE %s", 'rsfirewall_%' ) );

