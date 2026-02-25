<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wppl_show_deactivated');
delete_site_option('wppl_show_deactivated');
delete_option('wppl_show_plugin_itself');
delete_site_option('wppl_show_plugin_itself');
delete_option('wppl_show_plugin_description');
delete_site_option('wppl_show_plugin_description');
delete_option('wppl_show_plugin_version');
delete_site_option('wppl_show_plugin_version');
delete_option('wppl_show_total_headline');
delete_site_option('wppl_show_total_headline');
delete_option('wppl_total_headline_text');
delete_site_option('wppl_total_headline_text');
delete_option('wppl_total_headline');
delete_site_option('wppl_total_headline');

