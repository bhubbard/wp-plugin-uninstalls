<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('WPAWESOME_ENABLE_CONTEXT_MENUS');
delete_site_option('WPAWESOME_ENABLE_CONTEXT_MENUS');
delete_option('WPAWESOME_ENABLE_FAST_LOGIN');
delete_site_option('WPAWESOME_ENABLE_FAST_LOGIN');
delete_option('WPAWESOME_ENABLE_HUGE_UPLOAD');
delete_site_option('WPAWESOME_ENABLE_HUGE_UPLOAD');

