<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%update_notice_needed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%update_redirection_needed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%owner_notice_dismissed' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('c4wp_v3_failover_available');
delete_site_option('c4wp_v3_failover_available');
delete_option('c4wp_admin_options');
delete_site_option('c4wp_admin_options');
delete_option('disallowed_keys');
delete_site_option('disallowed_keys');
delete_option('c4wp_network_notice_dismissed');
delete_site_option('c4wp_network_notice_dismissed');
delete_option('c4wp_update_redirection_needed');
delete_site_option('c4wp_update_redirection_needed');
delete_option('c4wp_70_upgrade_complete');
delete_site_option('c4wp_70_upgrade_complete');
delete_option('anr_admin_options');
delete_site_option('anr_admin_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('c4wp_redirect_after_activation');
delete_site_option('c4wp_redirect_after_activation');
delete_option('fs_c4wp');
delete_site_option('fs_c4wp');

// Delete Transients
delete_transient('c4wp_admin_options_errors');
delete_site_transient('c4wp_admin_options_errors');
delete_transient('c4wp_config_file_hash');
delete_site_transient('c4wp_config_file_hash');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'nocaptcha_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'nocaptcha_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'nocaptcha_plugin_notice_ignore' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'nocaptcha_plugin_notice_ignore' ) );

