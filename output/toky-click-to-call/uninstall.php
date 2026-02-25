<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('toky_options');
delete_site_option('toky_options');
delete_option('custom_code');
delete_site_option('custom_code');
delete_option('visibility');
delete_site_option('visibility');
delete_option('username');
delete_site_option('username');
delete_option('text');
delete_site_option('text');
delete_option('position');
delete_site_option('position');
delete_option('color');
delete_site_option('color');

