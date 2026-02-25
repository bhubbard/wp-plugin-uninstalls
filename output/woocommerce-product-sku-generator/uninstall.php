<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_db_version');
delete_site_option('woocommerce_db_version');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('wc_sku_generator_simple');
delete_site_option('wc_sku_generator_simple');
delete_option('wc_sku_generator_variation');
delete_site_option('wc_sku_generator_variation');
delete_option('wc_sku_generator_attribute_spaces');
delete_site_option('wc_sku_generator_attribute_spaces');
delete_option('wc_sku_generator_version');
delete_site_option('wc_sku_generator_version');
delete_option('wc_sku_generator_select');
delete_site_option('wc_sku_generator_select');

