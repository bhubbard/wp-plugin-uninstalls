<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_registration_generate_username');
delete_site_option('woocommerce_registration_generate_username');

// Delete Transients
delete_transient('ptwoo_simple_order_approval_nag');
delete_site_transient('ptwoo_simple_order_approval_nag');

