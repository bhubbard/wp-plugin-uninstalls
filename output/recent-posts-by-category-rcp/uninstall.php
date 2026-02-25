<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rpcbycat_posts_per_page');
delete_site_option('rpcbycat_posts_per_page');
delete_option('rpcbycat_category');
delete_site_option('rpcbycat_category');
delete_option('rpcbycat_order_by');
delete_site_option('rpcbycat_order_by');
delete_option('rpcbycat_layout');
delete_site_option('rpcbycat_layout');
delete_option('rpcbycat_show_image');
delete_site_option('rpcbycat_show_image');
delete_option('rpcbycat_rtl');
delete_site_option('rpcbycat_rtl');
delete_option('rpcbycat_show_excerpt');
delete_site_option('rpcbycat_show_excerpt');

