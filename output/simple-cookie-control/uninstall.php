<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('analytics_simple_cookie_control');
delete_site_option('analytics_simple_cookie_control');
delete_option('customizer_simple_cookie_control');
delete_site_option('customizer_simple_cookie_control');

