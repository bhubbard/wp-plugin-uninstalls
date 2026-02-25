<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smartpayinvoices_option_db_version');
delete_site_option('smartpayinvoices_option_db_version');
delete_option('smartpayinvoices_options');
delete_site_option('smartpayinvoices_options');
delete_option('woocommerce_tax_round_at_subtotal');
delete_site_option('woocommerce_tax_round_at_subtotal');

