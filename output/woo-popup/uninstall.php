<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('default_post_edit_rows');
delete_site_option('default_post_edit_rows');
delete_option('woo-popup_options');
delete_site_option('woo-popup_options');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

