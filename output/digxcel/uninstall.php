<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('digxcel_cookie_widget_enabled');
delete_site_option('digxcel_cookie_widget_enabled');
delete_option('digxcel_cookie_widget_key');
delete_site_option('digxcel_cookie_widget_key');
delete_option('digxcel_key');
delete_site_option('digxcel_key');

