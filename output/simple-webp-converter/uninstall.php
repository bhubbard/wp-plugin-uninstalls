<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpwebpconv_options');
delete_site_option('simpwebpconv_options');
delete_option('simpwebpconv_stats');
delete_site_option('simpwebpconv_stats');
delete_option('swc_options');
delete_site_option('swc_options');

