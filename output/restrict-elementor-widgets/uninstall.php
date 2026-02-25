<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codexpert-blog-json');
delete_site_option('codexpert-blog-json');
delete_option('restrict-elementor-widgets-docs-json');
delete_site_option('restrict-elementor-widgets-docs-json');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');

// Delete Transients
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_cx-plugin-info-%', '_site_transient_cx-plugin-info-%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('update_plugins');
delete_site_transient('update_plugins');

// Clear Cron Jobs
wp_clear_scheduled_hook('restrict-elementor-widgets_daily');
wp_clear_scheduled_hook('pluggable-daily');

