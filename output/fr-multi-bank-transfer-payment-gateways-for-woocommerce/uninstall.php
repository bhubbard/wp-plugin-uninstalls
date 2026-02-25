<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fr_multi_bank_transfer_gateways_for_woocommerce_bank_number');
delete_site_option('fr_multi_bank_transfer_gateways_for_woocommerce_bank_number');

