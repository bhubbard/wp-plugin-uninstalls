<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_email_base_color');
delete_site_option('woocommerce_email_base_color');
delete_option('woocommerce_email_from_address');
delete_site_option('woocommerce_email_from_address');

