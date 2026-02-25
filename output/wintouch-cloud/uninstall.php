<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');
delete_option('wintouch_userid');
delete_site_option('wintouch_userid');
delete_option('wintouch_enterpriseid');
delete_site_option('wintouch_enterpriseid');
delete_option('wintouch_shopurl');
delete_site_option('wintouch_shopurl');
delete_option('wintouch_apikey');
delete_site_option('wintouch_apikey');
delete_option('wintouch_usertoken');
delete_site_option('wintouch_usertoken');
delete_option('wintouch_lastsync');
delete_site_option('wintouch_lastsync');
delete_option('wintouch_setting_orderstate');
delete_site_option('wintouch_setting_orderstate');
delete_option('wintouch_setting_syncstock');
delete_site_option('wintouch_setting_syncstock');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');

// Clear Cron Jobs
wp_clear_scheduled_hook('wintouchStockSync');

