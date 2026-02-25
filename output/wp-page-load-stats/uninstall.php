<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_pls_admin_load_times');
delete_site_option('wp_pls_admin_load_times');
delete_option('wp_pls_load_times');
delete_site_option('wp_pls_load_times');

