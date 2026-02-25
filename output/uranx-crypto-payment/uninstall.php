<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_pay_page_id');
delete_site_option('woocommerce_pay_page_id');
delete_option('webhook_debug');
delete_site_option('webhook_debug');

