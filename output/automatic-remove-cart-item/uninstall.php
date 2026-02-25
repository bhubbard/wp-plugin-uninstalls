<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('auto_remove_cart_item_settings_redirect');
delete_site_option('auto_remove_cart_item_settings_redirect');
delete_option('auto_remove_cart_item_custom_nonce');
delete_site_option('auto_remove_cart_item_custom_nonce');
delete_option('auto_remove_cart_item_dropdown');
delete_site_option('auto_remove_cart_item_dropdown');
delete_option('auto_remove_cart_item_time_interval_seconds');
delete_site_option('auto_remove_cart_item_time_interval_seconds');
delete_option('auto_remove_cart_item_time_interval_minutes');
delete_site_option('auto_remove_cart_item_time_interval_minutes');
delete_option('auto_remove_cart_item_time_interval_hours');
delete_site_option('auto_remove_cart_item_time_interval_hours');
delete_option('auto_remove_cart_item_time_interval_days');
delete_site_option('auto_remove_cart_item_time_interval_days');
delete_option('auto_remove_cart_item_checkbox');
delete_site_option('auto_remove_cart_item_checkbox');

