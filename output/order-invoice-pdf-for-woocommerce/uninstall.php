<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpe_invoice_pdf_settings');
delete_site_option('wpe_invoice_pdf_settings');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

