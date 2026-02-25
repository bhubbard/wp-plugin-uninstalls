<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sg_oa_woo_manage_inventory');
delete_site_option('sg_oa_woo_manage_inventory');
delete_option('woocommerce_woa_gateway_settings');
delete_site_option('woocommerce_woa_gateway_settings');
delete_option('sg_enable_order_edit');
delete_site_option('sg_enable_order_edit');
delete_option('woocommerce_email_footer_text');
delete_site_option('woocommerce_email_footer_text');

