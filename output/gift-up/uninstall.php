<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('giftup_company_id');
delete_site_option('giftup_company_id');
delete_option('giftup_api_key');
delete_site_option('giftup_api_key');
delete_option('giftup_version');
delete_site_option('giftup_version');
delete_option('giftup_woocommerce_operating_mode');
delete_site_option('giftup_woocommerce_operating_mode');
delete_option('giftup_woocommerce_enabled');
delete_site_option('giftup_woocommerce_enabled');
delete_option('giftup_woocommerce_apply_to_shipping');
delete_site_option('giftup_woocommerce_apply_to_shipping');
delete_option('giftup_woocommerce_apply_to_taxes');
delete_site_option('giftup_woocommerce_apply_to_taxes');
delete_option('company_id');
delete_site_option('company_id');
delete_option('api_key');
delete_site_option('api_key');

