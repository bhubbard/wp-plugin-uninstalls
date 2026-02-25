<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unzer_public_key');
delete_site_option('unzer_public_key');
delete_option('unzer_chargeback_order_status');
delete_site_option('unzer_chargeback_order_status');
delete_option('unzer_captured_order_status');
delete_site_option('unzer_captured_order_status');
delete_option('unzer_private_key');
delete_site_option('unzer_private_key');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('unzer_authorized_order_status');
delete_site_option('unzer_authorized_order_status');

