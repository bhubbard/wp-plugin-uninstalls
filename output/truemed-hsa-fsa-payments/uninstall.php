<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('truemed_hsa_fsa_idempotency_secret');
delete_site_option('truemed_hsa_fsa_idempotency_secret');
delete_option('woocommerce_truemed_hsa_fsa_payments_settings');
delete_site_option('woocommerce_truemed_hsa_fsa_payments_settings');

