<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('flipdish_ordering_options');
delete_site_option('flipdish_ordering_options');
delete_option('FLIPDISH_ORDERING_VERSION');
delete_site_option('FLIPDISH_ORDERING_VERSION');
delete_option('portal_ID');
delete_site_option('portal_ID');
delete_option('light_or_dark_theme');
delete_site_option('light_or_dark_theme');
delete_option('data_offset_value');
delete_site_option('data_offset_value');
delete_option('transparent_background');
delete_site_option('transparent_background');
delete_option('apple_pay');
delete_site_option('apple_pay');

