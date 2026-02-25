<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('basic_optimization_disable_emoticons');
delete_site_option('basic_optimization_disable_emoticons');
delete_option('basic_optimization_remove_shortlink');
delete_site_option('basic_optimization_remove_shortlink');
delete_option('basic_optimization_remove_cssjs_ver');
delete_site_option('basic_optimization_remove_cssjs_ver');
delete_option('basic_optimization_remove_rsd_links');
delete_site_option('basic_optimization_remove_rsd_links');
delete_option('basic_optimization_disable_embed');
delete_site_option('basic_optimization_disable_embed');
delete_option('basic_optimization_disable_xmlrpc');
delete_site_option('basic_optimization_disable_xmlrpc');
delete_option('basic_optimization_remove_wlwmanifest_link');
delete_site_option('basic_optimization_remove_wlwmanifest_link');
delete_option('basic_optimization_disable_pingback');
delete_site_option('basic_optimization_disable_pingback');
delete_option('basic_optimization_hide_wp_version');
delete_site_option('basic_optimization_hide_wp_version');
delete_option('basic_optimization_stop_heartbeat');
delete_site_option('basic_optimization_stop_heartbeat');
delete_option('basic_optimization_dequeue_dashicon');
delete_site_option('basic_optimization_dequeue_dashicon');
delete_option('basic_optimization_installed');
delete_site_option('basic_optimization_installed');
delete_option('basic_optimization_version');
delete_site_option('basic_optimization_version');

