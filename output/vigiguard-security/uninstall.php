<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vigiguard_security_settings');
delete_site_option('vigiguard_security_settings');
delete_option('vigiguard_security_keep_data_on_uninstall');
delete_site_option('vigiguard_security_keep_data_on_uninstall');
delete_option('vigiguard_last_file_check');
delete_site_option('vigiguard_last_file_check');
delete_option('vigiguard_security_db_version');
delete_site_option('vigiguard_security_db_version');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('vigiguard_security_settings_saved');
delete_site_transient('vigiguard_security_settings_saved');
delete_transient('vigiguard_security_activated');
delete_site_transient('vigiguard_security_activated');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vigiguard_lockout_%', '_site_transient_vigiguard_lockout_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_vigiguard_login_attempts_%', '_site_transient_vigiguard_login_attempts_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('vigiguard_security_daily_cleanup');
wp_clear_scheduled_hook('vigiguard_security_weekly_file_check');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'vigiguard_dismissed_headers_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'vigiguard_dismissed_headers_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'vigiguard_dismissed_headers_notice' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'vigiguard_dismissed_headers_notice' ) );

