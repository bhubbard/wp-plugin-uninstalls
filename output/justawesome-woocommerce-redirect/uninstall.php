<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('justawesome_woocommerce_redirect_type');
delete_site_option('justawesome_woocommerce_redirect_type');
delete_option('justawesome_woocommerce_redirect_url');
delete_site_option('justawesome_woocommerce_redirect_url');
delete_option('justawesome_woocommerce_redirect_pageid');
delete_site_option('justawesome_woocommerce_redirect_pageid');
delete_option('justawesome_woocommerce_redirect_productid');
delete_site_option('justawesome_woocommerce_redirect_productid');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');

