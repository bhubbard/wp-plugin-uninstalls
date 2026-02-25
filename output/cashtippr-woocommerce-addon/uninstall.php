<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cashtippr_woocommerce_installed');
delete_site_option('cashtippr_woocommerce_installed');
delete_option('woocommerce_hold_stock_minutes');
delete_site_option('woocommerce_hold_stock_minutes');
delete_option('woocommerce_manage_stock');
delete_site_option('woocommerce_manage_stock');
delete_option('woocommerce_cashtippr_woocommerce_settings');
delete_site_option('woocommerce_cashtippr_woocommerce_settings');

