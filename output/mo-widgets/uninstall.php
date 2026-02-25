<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dw_check_new_pages');
delete_site_option('dw_check_new_pages');
delete_option('dw_saved_page_list');
delete_site_option('dw_saved_page_list');
delete_option('dw_saved_cat_list');
delete_site_option('dw_saved_cat_list');

