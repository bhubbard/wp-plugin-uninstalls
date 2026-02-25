<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ext_cst_status');
delete_site_option('ext_cst_status');
delete_option('ext_cst_label');
delete_site_option('ext_cst_label');
delete_option('ext_cst_label_billing');
delete_site_option('ext_cst_label_billing');
delete_option('ext_cst_amount_type');
delete_site_option('ext_cst_amount_type');
delete_option('ext_cst_amount');
delete_site_option('ext_cst_amount');
delete_option('ext_cst_label_css');
delete_site_option('ext_cst_label_css');
delete_option('ext_cst_inc_ship_costs');
delete_site_option('ext_cst_inc_ship_costs');
delete_option('ext_cst_inc_tax');
delete_site_option('ext_cst_inc_tax');
delete_option('ext_cst_extra');
delete_site_option('ext_cst_extra');
delete_option('ext_cst_auto_checked');
delete_site_option('ext_cst_auto_checked');
delete_option('woocommerce_tax_total_display');
delete_site_option('woocommerce_tax_total_display');

