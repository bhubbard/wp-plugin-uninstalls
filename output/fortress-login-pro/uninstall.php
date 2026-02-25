<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fortress_last_promotion_date');
delete_site_option('fortress_last_promotion_date');
delete_option('fortress_smtp_verified');
delete_site_option('fortress_smtp_verified');
delete_option('fortress_auto_rotation_enabled');
delete_site_option('fortress_auto_rotation_enabled');
delete_option('fortress_auto_rotation_interval');
delete_site_option('fortress_auto_rotation_interval');
delete_option('fortress_auto_rotation_format');
delete_site_option('fortress_auto_rotation_format');
delete_option('fortress_auto_rotation_length');
delete_site_option('fortress_auto_rotation_length');
delete_option('fortress_auto_rotation_char_length');
delete_site_option('fortress_auto_rotation_char_length');
delete_option('fortress_auto_rotation_include_numbers');
delete_site_option('fortress_auto_rotation_include_numbers');
delete_option('fortress_last_rotation_date');
delete_site_option('fortress_last_rotation_date');
delete_option('fortress_active_slug');
delete_site_option('fortress_active_slug');
delete_option('fortress_smtp_host');
delete_site_option('fortress_smtp_host');
delete_option('fortress_smtp_port');
delete_site_option('fortress_smtp_port');
delete_option('fortress_smtp_encryption');
delete_site_option('fortress_smtp_encryption');
delete_option('fortress_smtp_username');
delete_site_option('fortress_smtp_username');
delete_option('fortress_smtp_password');
delete_site_option('fortress_smtp_password');
delete_option('fortress_smtp_from_email');
delete_site_option('fortress_smtp_from_email');
delete_option('fortress_smtp_from_name');
delete_site_option('fortress_smtp_from_name');
delete_option('fortress_smtp_recipient_email');
delete_site_option('fortress_smtp_recipient_email');
delete_option('fortress_smtp_last_error');
delete_site_option('fortress_smtp_last_error');
delete_option('fortress_block_install_files');
delete_site_option('fortress_block_install_files');
delete_option('fortress_next_rotation_slug');
delete_site_option('fortress_next_rotation_slug');
delete_option('fortress_login_attempt_logs');
delete_site_option('fortress_login_attempt_logs');
delete_option('fortress_pending_slug_expiry');
delete_site_option('fortress_pending_slug_expiry');
delete_option('fortress_pending_slug_status');
delete_site_option('fortress_pending_slug_status');
delete_option('fortress_pending_slug');
delete_site_option('fortress_pending_slug');
delete_option('fortress_pending_slug_created');
delete_site_option('fortress_pending_slug_created');
delete_option('fortress_slug_history');
delete_site_option('fortress_slug_history');
delete_option('fortress_flush_rewrite_rules');
delete_site_option('fortress_flush_rewrite_rules');
delete_option('fortress_htaccess_error');
delete_site_option('fortress_htaccess_error');
delete_option('fortress_slug_history_migrated');
delete_site_option('fortress_slug_history_migrated');
delete_option('fortress_last_added_pending_slug');
delete_site_option('fortress_last_added_pending_slug');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('fortress_last_login_attempt');
delete_site_option('fortress_last_login_attempt');
delete_option('fortress_uninstall_error');
delete_site_option('fortress_uninstall_error');

// Delete Transients
delete_transient('fortress_slug_rotated');
delete_site_transient('fortress_slug_rotated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fortress_login_slug_used_%', '_site_transient_fortress_login_slug_used_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fortress_slug_promoted');
delete_site_transient('fortress_slug_promoted');
delete_transient('fortress_smtp_test_result');
delete_site_transient('fortress_smtp_test_result');

// Clear Cron Jobs
wp_clear_scheduled_hook('fortress_check_pending_slug');
wp_clear_scheduled_hook('fortress_delayed_flush_rules');
wp_clear_scheduled_hook('fortress_daily_rotation_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'fortress_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'fortress_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'fortress_last_login' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'fortress_last_login' ) );

