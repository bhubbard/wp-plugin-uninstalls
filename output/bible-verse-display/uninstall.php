<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bvd_post_version');
delete_site_option('bvd_post_version');
delete_option('bvd_post_type');
delete_site_option('bvd_post_type');
delete_option('bvd_connection');
delete_site_option('bvd_connection');
delete_option('bvd_show_version');
delete_site_option('bvd_show_version');
delete_option('bvd_favorites');
delete_site_option('bvd_favorites');

