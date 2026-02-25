<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dc_moafw_activate');
delete_site_option('dc_moafw_activate');
delete_option('dc_moafw_minimum');
delete_site_option('dc_moafw_minimum');
delete_option('dc_moafw_message');
delete_site_option('dc_moafw_message');
delete_option('dc_moafw_current_total_text');
delete_site_option('dc_moafw_current_total_text');
delete_option('dc_moafw_currency_display_type');
delete_site_option('dc_moafw_currency_display_type');
delete_option('dc_moafw_message_shop');
delete_site_option('dc_moafw_message_shop');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');

