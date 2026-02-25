<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp2baiduzone_user');
delete_site_option('wp2baiduzone_user');
delete_option('wp2baiduzone_password');
delete_site_option('wp2baiduzone_password');
delete_option('wp2baiduzone_url');
delete_site_option('wp2baiduzone_url');
delete_option('wp2baiduzone_blogpower');
delete_site_option('wp2baiduzone_blogpower');
delete_option('wp2baiduzone_isaddlink');
delete_site_option('wp2baiduzone_isaddlink');
delete_option('wp2baiduzone_issync');
delete_site_option('wp2baiduzone_issync');

