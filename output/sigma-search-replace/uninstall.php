<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sigma_ssr_replace_info');
delete_site_option('sigma_ssr_replace_info');
delete_option('sigma_ssr_search_info');
delete_site_option('sigma_ssr_search_info');
delete_option('sigma_ssr_plugin_should_stop_search');
delete_site_option('sigma_ssr_plugin_should_stop_search');
delete_option('sigma_ssr_plugin_settings');
delete_site_option('sigma_ssr_plugin_settings');

