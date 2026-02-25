<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailpoet_wp_ecommerce_subscribe_too');
delete_site_option('mailpoet_wp_ecommerce_subscribe_too');
delete_option('mailpoet_enable_checkout');
delete_site_option('mailpoet_enable_checkout');
delete_option('mailpoet_checkout_label');
delete_site_option('mailpoet_checkout_label');
delete_option('mailpoet_wp_ecommerce_active');
delete_site_option('mailpoet_wp_ecommerce_active');

