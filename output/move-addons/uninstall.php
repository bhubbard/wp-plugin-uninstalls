<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('move_do_activation_redirect');
delete_site_option('move_do_activation_redirect');
delete_option('htmove_widget_list');
delete_site_option('htmove_widget_list');
delete_option('htmove_userdata_list');
delete_site_option('htmove_userdata_list');
delete_option('htmove_module_list');
delete_site_option('htmove_module_list');
delete_option('move_installed');
delete_site_option('move_installed');
delete_option('MOVE_ADDONS_VERSION');
delete_site_option('MOVE_ADDONS_VERSION');
delete_option('yith_wcwl_wishlist_page_id');
delete_site_option('yith_wcwl_wishlist_page_id');
delete_option('yith_wcwl_add_to_wishlist_text');
delete_site_option('yith_wcwl_add_to_wishlist_text');
delete_option('yith_wcwl_browse_wishlist_text');
delete_site_option('yith_wcwl_browse_wishlist_text');
delete_option('yith_wcwl_product_added_text');
delete_site_option('yith_wcwl_product_added_text');
delete_option('job_manager_enable_types');
delete_site_option('job_manager_enable_types');

