<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('utils_disable_rsd_checkbox');
delete_site_option('utils_disable_rsd_checkbox');
delete_option('utils_remove_wp_ver_checkbox');
delete_site_option('utils_remove_wp_ver_checkbox');
delete_option('utils_remove_wlwmanifest_checkbox');
delete_site_option('utils_remove_wlwmanifest_checkbox');
delete_option('utils_remove_shortlink_checkbox');
delete_site_option('utils_remove_shortlink_checkbox');
delete_option('utils_disable_api_checkbox');
delete_site_option('utils_disable_api_checkbox');
delete_option('utils_remove_discore_links_checkbox');
delete_site_option('utils_remove_discore_links_checkbox');

