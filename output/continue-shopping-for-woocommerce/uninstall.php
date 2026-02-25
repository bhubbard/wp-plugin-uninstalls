<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_cart_redirect_after_add');
delete_site_option('woocommerce_cart_redirect_after_add');
delete_option('hpy_cs_destination');
delete_site_option('hpy_cs_destination');
delete_option('hpy_cs_custom_link');
delete_site_option('hpy_cs_custom_link');
delete_option('hpy_cs_custom_text');
delete_site_option('hpy_cs_custom_text');
delete_option('woocommerce_shop_page_id');
delete_site_option('woocommerce_shop_page_id');
delete_option('woocommerce_permalinks');
delete_site_option('woocommerce_permalinks');
delete_option('hpy_cs_empty_cart_notice');
delete_site_option('hpy_cs_empty_cart_notice');
delete_option('hpy_cs_empty_cart_text');
delete_site_option('hpy_cs_empty_cart_text');
delete_option('hpy_cs_permanent_cart_notice');
delete_site_option('hpy_cs_permanent_cart_notice');
delete_option('hpy_cs_trigger_on_update');
delete_site_option('hpy_cs_trigger_on_update');
delete_option('hpy_cs_settings');
delete_site_option('hpy_cs_settings');

// Delete Transients
delete_transient('recent_cat');
delete_site_transient('recent_cat');

