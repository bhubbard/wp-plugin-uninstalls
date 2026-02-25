<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fb_api_id');
delete_site_option('fb_api_id');
delete_option('fb_app_secret');
delete_site_option('fb_app_secret');
delete_option('fb_login_page');
delete_site_option('fb_login_page');

