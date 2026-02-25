<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('accessibility_shopid');
delete_site_option('accessibility_shopid');
delete_option('accessibility_primaryid');
delete_site_option('accessibility_primaryid');
delete_option('accessibility_install');
delete_site_option('accessibility_install');
delete_option('my_plugin_selected_language');
delete_site_option('my_plugin_selected_language');
delete_option('accessibility_do_redirect');
delete_site_option('accessibility_do_redirect');
delete_option('ada_uninstall_reason');
delete_site_option('ada_uninstall_reason');
delete_option('accessibility_tokken');
delete_site_option('accessibility_tokken');
delete_option('accessibility_url');
delete_site_option('accessibility_url');
delete_option('accessibility_plan');
delete_site_option('accessibility_plan');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'accessibility_widget_backup_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_accessibility_widget_data_%', '_site_transient_accessibility_widget_data_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}

