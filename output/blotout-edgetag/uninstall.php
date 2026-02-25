<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edgetag_init');
delete_site_option('edgetag_init');
delete_option('edgetag_url');
delete_site_option('edgetag_url');
delete_option('edgetag_selectors');
delete_site_option('edgetag_selectors');
delete_option('edgetag_script');
delete_site_option('edgetag_script');
delete_option('edgetag_newsletter_event_name');
delete_site_option('edgetag_newsletter_event_name');
delete_option('edgetag_purchase_subtotal_only');
delete_site_option('edgetag_purchase_subtotal_only');
delete_option('woocommerce_price_num_decimals');
delete_site_option('woocommerce_price_num_decimals');

