<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user');
delete_site_option('user');
delete_option('color_code');
delete_site_option('color_code');
delete_option('color_code2');
delete_site_option('color_code2');
delete_option('user_color_code');
delete_site_option('user_color_code');
delete_option('user_color_code2');
delete_site_option('user_color_code2');

