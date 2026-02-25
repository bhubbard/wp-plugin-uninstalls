<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('disable_right_click_enabled');
delete_site_option('disable_right_click_enabled');
delete_option('show_topbar_panel');
delete_site_option('show_topbar_panel');
delete_option('disable_rest_api');
delete_site_option('disable_rest_api');

