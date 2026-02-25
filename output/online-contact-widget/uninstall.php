<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wb_ocw_ver');
delete_site_option('wb_ocw_ver');
delete_option('ocw_db_ver');
delete_site_option('ocw_db_ver');
delete_option('wb_ocw_promote');
delete_site_option('wb_ocw_promote');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'wb_ocw_cnf_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%ver' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('wb_item_faqs');
delete_site_option('wb_item_faqs');
delete_option('wbm-cnf');
delete_site_option('wbm-cnf');

// Clear Cron Jobs
wp_clear_scheduled_hook('ocw_mail_send');

