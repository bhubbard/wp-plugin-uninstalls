<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cat_temp_post');
delete_site_option('cat_temp_post');
delete_option('cat_temp_data');
delete_site_option('cat_temp_data');
delete_option('cat_arch_data');
delete_site_option('cat_arch_data');

