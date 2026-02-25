<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_logo_url');
delete_site_option('wp_logo_url');
delete_option('wp_logo_height');
delete_site_option('wp_logo_height');
delete_option('wp_logo_width');
delete_site_option('wp_logo_width');

