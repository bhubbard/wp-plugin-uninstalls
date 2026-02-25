<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rocext_terms_accepted');
delete_site_option('rocext_terms_accepted');
delete_option('rocext_terms_accepted_date');
delete_site_option('rocext_terms_accepted_date');
delete_option('rocext_terms_accepted_by');
delete_site_option('rocext_terms_accepted_by');
delete_option('rocext_show_full_history');
delete_site_option('rocext_show_full_history');
delete_option('rocext_visible_columns');
delete_site_option('rocext_visible_columns');
delete_option('rocext_user_labels');
delete_site_option('rocext_user_labels');
delete_option('rocext_auto_cleanup');
delete_site_option('rocext_auto_cleanup');
delete_option('rocext_retention_period');
delete_site_option('rocext_retention_period');
delete_option('rocext_policy_version');
delete_site_option('rocext_policy_version');
delete_option('rocext_integrity_salt');
delete_site_option('rocext_integrity_salt');
delete_option('rocext_table_suffix');
delete_site_option('rocext_table_suffix');
delete_option('rocext_date_format');
delete_site_option('rocext_date_format');
delete_option('rocext_time_format');
delete_site_option('rocext_time_format');
delete_option('rocext_apply_display_to_exports');
delete_site_option('rocext_apply_display_to_exports');
delete_option('rocext_geoip_enabled');
delete_site_option('rocext_geoip_enabled');
delete_option('rocext_menu_location');
delete_site_option('rocext_menu_location');
delete_option('rocext_wizard_state');
delete_site_option('rocext_wizard_state');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_rocext_admin_messages_%', '_site_transient_rocext_admin_messages_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('rocext_invalid_records');
delete_site_transient('rocext_invalid_records');
delete_transient('rocext_verification_result');
delete_site_transient('rocext_verification_result');

// Clear Cron Jobs
wp_clear_scheduled_hook('rocext_daily_cleanup');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rocext_history_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rocext_history_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rocext_history_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rocext_history_warning_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'rocext_salt_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'rocext_salt_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'rocext_salt_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'rocext_salt_notice_dismissed' ) );

