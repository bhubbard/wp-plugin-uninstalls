<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('sksoftware_postone_for_woocommerce_is_authenticated');
delete_site_option('sksoftware_postone_for_woocommerce_is_authenticated');
delete_option('sksoftware_postone_for_woocommerce_auth_failed_after_save');
delete_site_option('sksoftware_postone_for_woocommerce_auth_failed_after_save');
delete_option('woocommerce_currency');
delete_site_option('woocommerce_currency');
delete_option('woocommerce_default_country');
delete_site_option('woocommerce_default_country');
delete_option('woocommerce_calc_taxes');
delete_site_option('woocommerce_calc_taxes');
delete_option('restrict_adding_same_tracking');
delete_site_option('restrict_adding_same_tracking');

