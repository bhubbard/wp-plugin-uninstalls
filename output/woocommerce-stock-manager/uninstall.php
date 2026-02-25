<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_stock_old_styles');
delete_site_option('woocommerce_stock_old_styles');
delete_option('woocommerce_notify_low_stock_amount');
delete_site_option('woocommerce_notify_low_stock_amount');
delete_option('wsm_dismiss_subscribe_admin_notice');
delete_site_option('wsm_dismiss_subscribe_admin_notice');
delete_option('sa_wsm_offer_bfcm_2025');
delete_site_option('sa_wsm_offer_bfcm_2025');
delete_option('sa_wsm_dismiss_in_app_pricing_notice');
delete_site_option('sa_wsm_dismiss_in_app_pricing_notice');
delete_option('wsm_display_option');
delete_site_option('wsm_display_option');
delete_option('woocommerce_stock_limit');
delete_site_option('woocommerce_stock_limit');

