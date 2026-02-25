<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wc_remove-checkout-fields_billing_fname');
delete_site_option('wc_remove-checkout-fields_billing_fname');
delete_option('wc_remove-checkout-fields_billing_lname');
delete_site_option('wc_remove-checkout-fields_billing_lname');
delete_option('wc_remove-checkout-fields_billing_phone');
delete_site_option('wc_remove-checkout-fields_billing_phone');
delete_option('wc_remove-checkout-fields_billing_company');
delete_site_option('wc_remove-checkout-fields_billing_company');
delete_option('wc_remove-checkout-fields_billing_country');
delete_site_option('wc_remove-checkout-fields_billing_country');
delete_option('wc_remove-checkout-fields_billing_address2');
delete_site_option('wc_remove-checkout-fields_billing_address2');
delete_option('wc_remove-checkout-fields_billing_address');
delete_site_option('wc_remove-checkout-fields_billing_address');
delete_option('wc_remove-checkout-fields_billing_city');
delete_site_option('wc_remove-checkout-fields_billing_city');
delete_option('wc_remove-checkout-fields_billing_state');
delete_site_option('wc_remove-checkout-fields_billing_state');
delete_option('wc_remove-checkout-fields_billing_postcode');
delete_site_option('wc_remove-checkout-fields_billing_postcode');
delete_option('wc_remove-checkout-fields_Shipping_fname');
delete_site_option('wc_remove-checkout-fields_Shipping_fname');
delete_option('wc_remove-checkout-fields_Shipping_lname');
delete_site_option('wc_remove-checkout-fields_Shipping_lname');
delete_option('wc_remove-checkout-fields_Shipping_phone');
delete_site_option('wc_remove-checkout-fields_Shipping_phone');
delete_option('wc_remove-checkout-fields_Shipping_company');
delete_site_option('wc_remove-checkout-fields_Shipping_company');
delete_option('wc_remove-checkout-fields_Shipping_country');
delete_site_option('wc_remove-checkout-fields_Shipping_country');
delete_option('wc_remove-checkout-fields_Shipping_address2');
delete_site_option('wc_remove-checkout-fields_Shipping_address2');
delete_option('wc_remove-checkout-fields_Shipping_address');
delete_site_option('wc_remove-checkout-fields_Shipping_address');
delete_option('wc_remove-checkout-fields_Shipping_city');
delete_site_option('wc_remove-checkout-fields_Shipping_city');
delete_option('wc_remove-checkout-fields_Shipping_state');
delete_site_option('wc_remove-checkout-fields_Shipping_state');
delete_option('wc_remove-checkout-fields_Shipping_postcode');
delete_site_option('wc_remove-checkout-fields_Shipping_postcode');
delete_option('wc_remove-checkout-fields_order_notes');
delete_site_option('wc_remove-checkout-fields_order_notes');

