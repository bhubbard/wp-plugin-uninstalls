<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('close_shop_settings_input');
delete_site_option('close_shop_settings_input');
delete_option('close_shop_settings_displayToggleCB');
delete_site_option('close_shop_settings_displayToggleCB');
delete_option('close_shop_settings_addToCartDisplayToggle');
delete_site_option('close_shop_settings_addToCartDisplayToggle');
delete_option('close_shop_settings_proceedToCheckoutDisplayToggle');
delete_site_option('close_shop_settings_proceedToCheckoutDisplayToggle');
delete_option('close_shop_settings_displayInputText');
delete_site_option('close_shop_settings_displayInputText');
delete_option('close_shop_settings_displayInputTextProductPage');
delete_site_option('close_shop_settings_displayInputTextProductPage');
delete_option('close_shop_settings_displayInputTextCartPage');
delete_site_option('close_shop_settings_displayInputTextCartPage');
delete_option('close_shop_settings_displayInputTextCheckoutPage');
delete_site_option('close_shop_settings_displayInputTextCheckoutPage');

