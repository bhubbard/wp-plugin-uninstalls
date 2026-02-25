<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_wcwl_enabled');
delete_site_option('yith_wcwl_enabled');
delete_option('pbo_mtw_hook_for_link');
delete_site_option('pbo_mtw_hook_for_link');
delete_option('pbo_mtw_hook_for_link_to_wishlist_page');
delete_site_option('pbo_mtw_hook_for_link_to_wishlist_page');
delete_option('pbo_mtw_label');
delete_site_option('pbo_mtw_label');
delete_option('pbo_mtw_successfully_moved_message');
delete_site_option('pbo_mtw_successfully_moved_message');
delete_option('pbo_mtw_view_wishlist_label');
delete_site_option('pbo_mtw_view_wishlist_label');

