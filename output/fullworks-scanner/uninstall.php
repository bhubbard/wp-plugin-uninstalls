<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('FULLWORKS_SCANNER_general');
delete_site_option('FULLWORKS_SCANNER_general');
delete_option('FULLWORKS_SCANNER_audit_schedule');
delete_site_option('FULLWORKS_SCANNER_audit_schedule');
delete_option('FULLWORKS_SCANNER_db_version');
delete_site_option('FULLWORKS_SCANNER_db_version');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'FULLWORKS_SCANNER_plugin_updated_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", ' FULLWORKS_SCANNER_plugin_updated_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('fullworks-scanner-whitelabel-names');
delete_site_option('fullworks-scanner-whitelabel-names');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_form_rendered' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('fullworks-vulnerability-plugin-data');
delete_site_transient('fullworks-vulnerability-plugin-data');
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('fullworks-scanner-theme-data');
delete_site_transient('fullworks-scanner-theme-data');
delete_transient('update_themes');
delete_site_transient('update_themes');
delete_transient('fullworks_vulndb_control');
delete_site_transient('fullworks_vulndb_control');
delete_transient('action_scheduler_last_pastdue_actions_check');
delete_site_transient('action_scheduler_last_pastdue_actions_check');
delete_transient('action_scheduler_admin_notice');
delete_site_transient('action_scheduler_admin_notice');
delete_transient('as_comment_count');
delete_site_transient('as_comment_count');

