<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('minimu_arr_domains');
delete_site_option('minimu_arr_domains');
delete_option('current_theme');
delete_site_option('current_theme');

