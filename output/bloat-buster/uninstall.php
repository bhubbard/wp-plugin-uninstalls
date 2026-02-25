<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_bbuster_disable_emoji');
delete_site_option('_bbuster_disable_emoji');
delete_option('_bbuster_disable_fse_global_styles');
delete_site_option('_bbuster_disable_fse_global_styles');
delete_option('_bbuster_remove_rsd_link');
delete_site_option('_bbuster_remove_rsd_link');
delete_option('_bbuster_remove_shortlink');
delete_site_option('_bbuster_remove_shortlink');
delete_option('_bbuster_disable_embed');
delete_site_option('_bbuster_disable_embed');
delete_option('_bbuster_disable_xmlrpc');
delete_site_option('_bbuster_disable_xmlrpc');
delete_option('_bbuster_hide_wp_version');
delete_site_option('_bbuster_hide_wp_version');
delete_option('_bbuster_disable_heartbeat');
delete_site_option('_bbuster_disable_heartbeat');
delete_option('_bbuster_dequeue_dashicon');
delete_site_option('_bbuster_dequeue_dashicon');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '_bbuster_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}

// Delete Transients
delete_transient('_import_success');
delete_site_transient('_import_success');

