<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctcl_activate_paypal');
delete_site_option('ctcl_activate_paypal');
delete_option('ctcl_paypal_client-id');
delete_site_option('ctcl_paypal_client-id');
delete_option('ctcl_paypal_color_option');
delete_site_option('ctcl_paypal_color_option');
delete_option('ctcl_paypal_enlable_card');
delete_site_option('ctcl_paypal_enlable_card');
delete_option('ctcl_currency');
delete_site_option('ctcl_currency');

