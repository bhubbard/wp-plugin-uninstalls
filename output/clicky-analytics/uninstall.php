<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cawp_got_updated');
delete_site_option('cawp_got_updated');
delete_option('cawp_options');
delete_site_option('cawp_options');
delete_option('cawp_version');
delete_site_option('cawp_version');
delete_option('ca_sitekey');
delete_site_option('ca_sitekey');
delete_option('ca_siteid');
delete_site_option('ca_siteid');
delete_option('ca_track_email');
delete_site_option('ca_track_email');
delete_option('ca_track_username');
delete_site_option('ca_track_username');
delete_option('ca_track_youtube');
delete_site_option('ca_track_youtube');
delete_option('ca_track_html5');
delete_site_option('ca_track_html5');
delete_option('ca_tracking');
delete_site_option('ca_tracking');
delete_option('ca_access');
delete_site_option('ca_access');
delete_option('ca_disabledashboard');
delete_site_option('ca_disabledashboard');
delete_option('ca_frontend');
delete_site_option('ca_frontend');
delete_option('ca_track_olp');
delete_site_option('ca_track_olp');
delete_option('ca_pgd');
delete_site_option('ca_pgd');
delete_option('ca_rd');
delete_site_option('ca_rd');
delete_option('ca_sd');
delete_site_option('ca_sd');
delete_option('cawp_network_options');
delete_site_option('cawp_network_options');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_cawp_cache_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_cawp_cache_timeout_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Clear Cron Jobs
wp_clear_scheduled_hook('cawp_expired_cache_hook');

