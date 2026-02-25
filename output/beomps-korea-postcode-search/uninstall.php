<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('find_button_name');
delete_site_option('find_button_name');
delete_option('billing_email_layout');
delete_site_option('billing_email_layout');
delete_option('billing_last_name_layout');
delete_site_option('billing_last_name_layout');
delete_option('billing_company_layout');
delete_site_option('billing_company_layout');
delete_option('billing_city_layout');
delete_site_option('billing_city_layout');
delete_option('billing_phone_layout');
delete_site_option('billing_phone_layout');
delete_option('shipping_last_name_layout');
delete_site_option('shipping_last_name_layout');
delete_option('shipping_company_layout');
delete_site_option('shipping_company_layout');
delete_option('shipping_city_layout');
delete_site_option('shipping_city_layout');
delete_option('protocol_type');
delete_site_option('protocol_type');
delete_option('postcode_type');
delete_site_option('postcode_type');

