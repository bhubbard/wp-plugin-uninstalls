<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce-product-generator-limit');
delete_site_option('woocommerce-product-generator-limit');
delete_option('woocommerce-product-generator-per-run');
delete_site_option('woocommerce-product-generator-per-run');
delete_option('woocommerce-product-generator-use-unsplash');
delete_site_option('woocommerce-product-generator-use-unsplash');
delete_option('woocommerce-product-generator-unsplash-access-key');
delete_site_option('woocommerce-product-generator-unsplash-access-key');
delete_option('woocommerce-product-generator-titles');
delete_site_option('woocommerce-product-generator-titles');
delete_option('woocommerce-product-generator-title');
delete_site_option('woocommerce-product-generator-title');
delete_option('woocommerce-product-generator-contents');
delete_site_option('woocommerce-product-generator-contents');
delete_option('woocommerce-product-generator-categories');
delete_site_option('woocommerce-product-generator-categories');
delete_option('woocommerce-product-generator-attributes');
delete_site_option('woocommerce-product-generator-attributes');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('woocommerce-product-generator-unsplash-picture-urls');
delete_site_transient('woocommerce-product-generator-unsplash-picture-urls');

