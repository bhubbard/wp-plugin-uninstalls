<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sspdt_feed_options');
delete_site_option('sspdt_feed_options');
delete_option('sspdt_api_key');
delete_site_option('sspdt_api_key');
delete_option('sspdt_api_path');
delete_site_option('sspdt_api_path');
delete_option('sspdt_format_options');
delete_site_option('sspdt_format_options');
delete_option('sspdt_api_cache');
delete_site_option('sspdt_api_cache');
delete_option('sspdt_helpers');
delete_site_option('sspdt_helpers');
delete_option('sspdt_defaults');
delete_site_option('sspdt_defaults');
delete_option('sspdt_fancybox');
delete_site_option('sspdt_fancybox');
delete_option('widget_sspdt_widget');
delete_site_option('widget_sspdt_widget');

