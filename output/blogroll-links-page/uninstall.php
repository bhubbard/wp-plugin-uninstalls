<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('blogroll_page_new_window');
delete_site_option('blogroll_page_new_window');
delete_option('blogroll_page_link');
delete_site_option('blogroll_page_link');
delete_option('blogroll_page_display_cat');
delete_site_option('blogroll_page_display_cat');
delete_option('blogroll_page_link_order1');
delete_site_option('blogroll_page_link_order1');
delete_option('blogroll_page_link_order2');
delete_site_option('blogroll_page_link_order2');

