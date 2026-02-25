<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apcmfw_product_condition_default');
delete_site_option('apcmfw_product_condition_default');
delete_option('apcmfw_product_condition_show_on_shop');
delete_site_option('apcmfw_product_condition_show_on_shop');
delete_option('apcmfw_product_condition_shop_label');
delete_site_option('apcmfw_product_condition_shop_label');
delete_option('apcmfw_product_condition_single_label');
delete_site_option('apcmfw_product_condition_single_label');
delete_option('apcmfw_product_condition_custom_css');
delete_site_option('apcmfw_product_condition_custom_css');

