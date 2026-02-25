<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cartrawler_primary');
delete_site_option('cartrawler_primary');
delete_option('cartrawler_secondary');
delete_site_option('cartrawler_secondary');
delete_option('cartrawler_complimentary');
delete_site_option('cartrawler_complimentary');
delete_option('cartrawler_version');
delete_site_option('cartrawler_version');
delete_option('cartrawler_clientid');
delete_site_option('cartrawler_clientid');
delete_option('cartrawler_title');
delete_site_option('cartrawler_title');
delete_option('cartrawler_theme');
delete_site_option('cartrawler_theme');
delete_option('cartrawler_title_text');
delete_site_option('cartrawler_title_text');
delete_option('my_first_text');
delete_site_option('my_first_text');

