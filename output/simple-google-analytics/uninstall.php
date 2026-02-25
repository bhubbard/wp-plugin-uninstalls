<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sga_analytics_id');
delete_site_option('sga_analytics_id');
delete_option('sga_code_location');
delete_site_option('sga_code_location');
delete_option('sga_demographic_and_interest');
delete_site_option('sga_demographic_and_interest');
delete_option('sga_render_when_loggedin');
delete_site_option('sga_render_when_loggedin');
delete_option('factory_plugin_versions');
delete_site_option('factory_plugin_versions');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_is_active' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('wbcr_factory_google_fonts');
delete_site_transient('wbcr_factory_google_fonts');
delete_transient('wbcr_factory_google_fonts_raw');
delete_site_transient('wbcr_factory_google_fonts_raw');

// Clear Cron Jobs
wp_clear_scheduled_hook('wbcr/gac/update_analytic_library');
wp_clear_scheduled_hook('wclearfy/google_tracking_cache_update');
wp_clear_scheduled_hook('wbcr_clearfy_update_local_ga');

