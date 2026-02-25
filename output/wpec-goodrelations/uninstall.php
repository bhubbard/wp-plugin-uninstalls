<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('product_ratings');
delete_site_option('product_ratings');
delete_option('gr_setup');
delete_site_option('gr_setup');
delete_option('gr_DeliveryMethod');
delete_site_option('gr_DeliveryMethod');
delete_option('gr_PaymentMethod');
delete_site_option('gr_PaymentMethod');
delete_option('gr_BusinessFunction');
delete_site_option('gr_BusinessFunction');
delete_option('gr_UnitOfMeasurement');
delete_site_option('gr_UnitOfMeasurement');
delete_option('gr_billingIncrement');
delete_site_option('gr_billingIncrement');
delete_option('gr_availableAtOrFrom');
delete_site_option('gr_availableAtOrFrom');
delete_option('gr_condition');
delete_site_option('gr_condition');
delete_option('gr_eligibleCustomerTypes');
delete_site_option('gr_eligibleCustomerTypes');
delete_option('gr_language');
delete_site_option('gr_language');
delete_option('gr_validity');
delete_site_option('gr_validity');
delete_option('currency_type');
delete_site_option('currency_type');
delete_option('gr_PartsAndLabor-PickUp');
delete_site_option('gr_PartsAndLabor-PickUp');
delete_option('gr_PartsAndLabor-BringIn');
delete_site_option('gr_PartsAndLabor-BringIn');
delete_option('gr_Labor-BringIn');
delete_site_option('gr_Labor-BringIn');

