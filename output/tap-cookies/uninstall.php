<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tap_cookies_list');
delete_site_option('tap_cookies_list');
delete_option('tap_cookies_information_box_title');
delete_site_option('tap_cookies_information_box_title');
delete_option('tap_cookies_information_box_text');
delete_site_option('tap_cookies_information_box_text');
delete_option('tap_cookies_information_box_position');
delete_site_option('tap_cookies_information_box_position');

