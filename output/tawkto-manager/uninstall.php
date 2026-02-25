<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ttm_version');
delete_site_option('ttm_version');
delete_option('ttm_hide_subscribers');
delete_site_option('ttm_hide_subscribers');
delete_option('ttm_tawktoscript');
delete_site_option('ttm_tawktoscript');
delete_option('ttm_advanced_mode');
delete_site_option('ttm_advanced_mode');
delete_option('ttm_hide_logged_in_subscribers');
delete_site_option('ttm_hide_logged_in_subscribers');
delete_option('ttm_backend_show_subscribers');
delete_site_option('ttm_backend_show_subscribers');
delete_option('ttm_backend_show_editors');
delete_site_option('ttm_backend_show_editors');
delete_option('ttm_backend_show_authors');
delete_site_option('ttm_backend_show_authors');
delete_option('ttm_backend_show_always');
delete_site_option('ttm_backend_show_always');
delete_option('ttm_backend_hide_admin');
delete_site_option('ttm_backend_hide_admin');
delete_option('ttm_backend_show_myaccount');
delete_site_option('ttm_backend_show_myaccount');
delete_option('ttm_hide_shopmanager');
delete_site_option('ttm_hide_shopmanager');
delete_option('ttm_show_always');
delete_site_option('ttm_show_always');
delete_option('ttm_show_front_page');
delete_site_option('ttm_show_front_page');
delete_option('ttm_show_cat_pages');
delete_site_option('ttm_show_cat_pages');
delete_option('ttm_show_tag_pages');
delete_site_option('ttm_show_tag_pages');
delete_option('ttm_show_page');
delete_site_option('ttm_show_page');
delete_option('ttm_show_post');
delete_site_option('ttm_show_post');
delete_option('ttm_hide_admin');
delete_site_option('ttm_hide_admin');
delete_option('ttm_show_logged_in_subscribers');
delete_site_option('ttm_show_logged_in_subscribers');
delete_option('ttm_backend_hide_shopmanager');
delete_site_option('ttm_backend_hide_shopmanager');
delete_option('ttm_show_single_product');
delete_site_option('ttm_show_single_product');
delete_option('ttm_show_shop_page');
delete_site_option('ttm_show_shop_page');
delete_option('ttm_show_cart_page');
delete_site_option('ttm_show_cart_page');
delete_option('ttm_show_checkout_page');
delete_site_option('ttm_show_checkout_page');

