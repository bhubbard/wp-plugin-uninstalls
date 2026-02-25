<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('head_js_wp_version');
delete_site_option('head_js_wp_version');
delete_option('head_js_wp_update_timestamp');
delete_site_option('head_js_wp_update_timestamp');

