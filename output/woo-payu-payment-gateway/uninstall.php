<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('payu_settings_option_name');
delete_site_option('payu_settings_option_name');
delete_option('_payu_plugin_version');
delete_site_option('_payu_plugin_version');
delete_option('woocommerce_payulistbanks_settings');
delete_site_option('woocommerce_payulistbanks_settings');
delete_option('woocommerce_payucreditcard_settings');
delete_site_option('woocommerce_payucreditcard_settings');
delete_option('woocommerce_payuinstallments_settings');
delete_site_option('woocommerce_payuinstallments_settings');

