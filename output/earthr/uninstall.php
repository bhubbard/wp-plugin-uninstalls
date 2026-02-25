<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('earthr_token');
delete_site_option('earthr_token');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('earthr_action');
delete_site_option('earthr_action');
delete_option('woocommerce_store_city');
delete_site_option('woocommerce_store_city');
delete_option('woocommerce_store_address');
delete_site_option('woocommerce_store_address');
delete_option('woocommerce_store_address_2');
delete_site_option('woocommerce_store_address_2');
delete_option('woocommerce_store_postcode');
delete_site_option('woocommerce_store_postcode');
delete_option('earthr_show');
delete_site_option('earthr_show');
delete_option('earthr_checkbox_style');
delete_site_option('earthr_checkbox_style');
delete_option('earthr_checkbox_label');
delete_site_option('earthr_checkbox_label');
delete_option('earthr_palette');
delete_site_option('earthr_palette');
delete_option('earthr_fee_name');
delete_site_option('earthr_fee_name');

// Delete Transients
delete_transient('earthr-activation-notice');
delete_site_transient('earthr-activation-notice');

