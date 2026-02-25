<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_mintpay_settings');
delete_site_option('woocommerce_mintpay_settings');
delete_option('mintpay_inst_type');
delete_site_option('mintpay_inst_type');
delete_option('mintpay_cashback_value');
delete_site_option('mintpay_cashback_value');

