<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_hide_category_hide_place');
delete_site_option('wp_hide_category_hide_place');
delete_option('wp_hide_category_id');
delete_site_option('wp_hide_category_id');

