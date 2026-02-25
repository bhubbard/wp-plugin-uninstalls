<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('logtivity_last_settings_check_in_at');
delete_site_option('logtivity_last_settings_check_in_at');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'dismissed-%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('logtivity_enable_options_table_logging');
delete_site_option('logtivity_enable_options_table_logging');
delete_option('logtivity_enable_post_meta_logging');
delete_site_option('logtivity_enable_post_meta_logging');
delete_option('logtivity_version');
delete_site_option('logtivity_version');
delete_option('logtivity_app_verify_url');
delete_site_option('logtivity_app_verify_url');
delete_option('logtivity_activate');
delete_site_option('logtivity_activate');

// Delete Transients
delete_transient('dismissed-logtivity-site-url-has-changed-notice');
delete_site_transient('dismissed-logtivity-site-url-has-changed-notice');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_dismissed-%', '_site_transient_dismissed-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_logtivity_%', '_site_transient_logtivity_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('logtivity-welcome-notice');
delete_site_transient('logtivity-welcome-notice');

