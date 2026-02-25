<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('uptimemonster_site_monitor_api_keys');
delete_site_option('uptimemonster_site_monitor_api_keys');
delete_option('uptimemonster_first_installed');
delete_site_option('uptimemonster_first_installed');
delete_option('uptimemonster_need_setup');
delete_site_option('uptimemonster_need_setup');
delete_option('auto_update_plugins');
delete_site_option('auto_update_plugins');
delete_option('auto_update_themes');
delete_site_option('auto_update_themes');
delete_option('umsm_site_monitor_api_keys');
delete_site_option('umsm_site_monitor_api_keys');
delete_option('roxwp_site_monitor_api_keys');
delete_site_option('roxwp_site_monitor_api_keys');
delete_option('uptimemonster_site_monitor_version');
delete_site_option('uptimemonster_site_monitor_version');

// Delete Transients
delete_transient('update_core');
delete_site_transient('update_core');
delete_transient('uptimemonster-setting-status');
delete_site_transient('uptimemonster-setting-status');
delete_transient('uptimemonster-is-connected');
delete_site_transient('uptimemonster-is-connected');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_uptimemonster_plugin_data_%', '_site_transient_uptimemonster_plugin_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_uptimemonster_theme_data_%', '_site_transient_uptimemonster_theme_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

