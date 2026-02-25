<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_home_page_menu');
delete_site_option('wp_home_page_menu');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

