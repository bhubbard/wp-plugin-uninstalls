<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_limited_access_bg');
delete_site_option('simple_limited_access_bg');
delete_option('simple_limited_access_text');
delete_site_option('simple_limited_access_text');
delete_option('simple_limited_access_pages');
delete_site_option('simple_limited_access_pages');
delete_option('simple_limited_access_post_type');
delete_site_option('simple_limited_access_post_type');
delete_option('simple_limited_access_list');
delete_site_option('simple_limited_access_list');
delete_option('simple_limited_access_cookie');
delete_site_option('simple_limited_access_cookie');

