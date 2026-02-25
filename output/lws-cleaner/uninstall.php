<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lws_cl_deactivate_comments');
delete_site_option('lws_cl_deactivate_comments');
delete_option('lws_cl_hide_comments');
delete_site_option('lws_cl_hide_comments');
delete_option('lwscleaner_do_not_ask_again');
delete_site_option('lwscleaner_do_not_ask_again');
delete_option('my_plugin_db_version');
delete_site_option('my_plugin_db_version');
delete_option('cron');
delete_site_option('cron');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'lws_cl_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('lwscleaner_remind_me');
delete_site_transient('lwscleaner_remind_me');
delete_transient('lws_cl_incache_modal');
delete_site_transient('lws_cl_incache_modal');

