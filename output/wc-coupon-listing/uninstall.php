<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_coupon_listing_show_on_product_page');
delete_site_option('wc_coupon_listing_show_on_product_page');
delete_option('wc_coupon_listing_mobile_screen_size');
delete_site_option('wc_coupon_listing_mobile_screen_size');
delete_option('wc_coupon_listing_required_product');
delete_site_option('wc_coupon_listing_required_product');
delete_option('wc_coupon_listing_title');
delete_site_option('wc_coupon_listing_title');

