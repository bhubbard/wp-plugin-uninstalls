<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_prices_include_tax');
delete_site_option('woocommerce_prices_include_tax');
delete_option('CHANNELENGINE_SCHEMA_VERSION');
delete_site_option('CHANNELENGINE_SCHEMA_VERSION');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_channel_engine_order_save_note');
delete_site_option('_channel_engine_order_save_note');
delete_option('_channel_engine_order_save_success');
delete_site_option('_channel_engine_order_save_success');

