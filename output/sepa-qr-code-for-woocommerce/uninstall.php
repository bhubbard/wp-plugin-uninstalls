<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('muxp_payment_request_text');
delete_site_option('muxp_payment_request_text');
delete_option('muxp_qr_max_width');
delete_site_option('muxp_qr_max_width');
delete_option('muxp_store_qr_code_as_image');
delete_site_option('muxp_store_qr_code_as_image');
delete_option('muxp_payment_request_email_text');
delete_site_option('muxp_payment_request_email_text');
delete_option('woocommerce_bacs_accounts');
delete_site_option('woocommerce_bacs_accounts');

