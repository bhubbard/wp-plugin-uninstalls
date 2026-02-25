<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsg_installed');
delete_site_option('wpsg_installed');
delete_option('wpshopgermany_ts_auto');
delete_site_option('wpshopgermany_ts_auto');
delete_option('wpshopgermany_ts_shopid');
delete_site_option('wpshopgermany_ts_shopid');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpshopgermany_ts_version_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wpshopgermany_ts_time_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wpsg_ps_cron');
delete_site_option('wpsg_ps_cron');
delete_option('cron');
delete_site_option('cron');
delete_option('mod_ps');
delete_site_option('mod_ps');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpsg_ps_task');

