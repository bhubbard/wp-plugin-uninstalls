<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('LCGRW_options');
delete_site_option('LCGRW_options');
delete_option('LCGRW_list_page_id');
delete_site_option('LCGRW_list_page_id');
delete_option('LCGRW_add_page_id');
delete_site_option('LCGRW_add_page_id');

