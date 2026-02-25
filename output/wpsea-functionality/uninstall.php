<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsea_func_generator_enabled');
delete_site_option('wpsea_func_generator_enabled');
delete_option('wpsea_func_feed_links_enabled');
delete_site_option('wpsea_func_feed_links_enabled');
delete_option('wpsea_func_wlwmanifest_enabled');
delete_site_option('wpsea_func_wlwmanifest_enabled');
delete_option('wpsea_func_rsd_enabled');
delete_site_option('wpsea_func_rsd_enabled');
delete_option('wpsea_func_analytics_enabled');
delete_site_option('wpsea_func_analytics_enabled');
delete_option('wpsea_func_analytics_id');
delete_site_option('wpsea_func_analytics_id');
delete_option('wpsea_func_noframes_enabled');
delete_site_option('wpsea_func_noframes_enabled');
delete_option('wpsea_func_setting_jquery_enabled');
delete_site_option('wpsea_func_setting_jquery_enabled');
delete_option('wpsea_func_contact_sendto');
delete_site_option('wpsea_func_contact_sendto');
delete_option('wpsea_func_load_jquery_enabled');
delete_site_option('wpsea_func_load_jquery_enabled');

