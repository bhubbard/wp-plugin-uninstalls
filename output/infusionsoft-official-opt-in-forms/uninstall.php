<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_options' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('inf_infusionsoft_options');
delete_site_option('inf_infusionsoft_options');
delete_option('infusionsoft_redirect_lists');
delete_site_option('infusionsoft_redirect_lists');
delete_option('update_refresh');
delete_site_option('update_refresh');
delete_option('inf_infusionsoft_stats_cache');
delete_site_option('inf_infusionsoft_stats_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('infusionsoft_lists_auto_refresh');
wp_clear_scheduled_hook('infusionsoft_stats_auto_refresh');

