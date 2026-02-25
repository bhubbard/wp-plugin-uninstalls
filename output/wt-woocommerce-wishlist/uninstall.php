<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wt_wishlist_button_style_settings');
delete_site_option('wt_wishlist_button_style_settings');
delete_option('wt_wishlist_table_settings');
delete_site_option('wt_wishlist_table_settings');
delete_option('wt_wishlist_general_settings');
delete_site_option('wt_wishlist_general_settings');
delete_option('wt_webtoffee-wishlist_page_id');
delete_site_option('wt_webtoffee-wishlist_page_id');
delete_option('default_value_added');
delete_site_option('default_value_added');

