<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wbs_config');
delete_site_option('wbs_config');
delete_option('wbs_global_methods');
delete_site_option('wbs_global_methods');
delete_option('wbs_settings');
delete_site_option('wbs_settings');
delete_option('woocommerce_currency_pos');
delete_site_option('woocommerce_currency_pos');
delete_option('woocommerce_weight_unit');
delete_site_option('woocommerce_weight_unit');
delete_option('wbsng_reviewed');
delete_site_option('wbsng_reviewed');
delete_option('woocommerce_dimension_unit');
delete_site_option('woocommerce_dimension_unit');
delete_option('wbsng_settings_multicurrency');
delete_site_option('wbsng_settings_multicurrency');

