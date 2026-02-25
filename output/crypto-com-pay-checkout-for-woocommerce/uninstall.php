<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crypto_plugin_version');
delete_site_option('crypto_plugin_version');
delete_option('woocommerce_crypto_pay_settings');
delete_site_option('woocommerce_crypto_pay_settings');

