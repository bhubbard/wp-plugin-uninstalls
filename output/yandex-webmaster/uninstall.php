<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ya_wm_options');
delete_site_option('ya_wm_options');
delete_option('ya_wm_auth');
delete_site_option('ya_wm_auth');
delete_option('ya_wm_object');
delete_site_option('ya_wm_object');

